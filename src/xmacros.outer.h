
// #include "forthwith.h"

forth_primitive("lit", 3, F_NORMAL, lit, "( -- n)", {
    // load addr and move IP
    load_addr(x, ip);
    incr_reg(ip);

    // push on stack
    pushd(tos);
    copy_reg(tos, x);

    jump(next);
  });

/*	STATE		Is the interpreter executing code (0) or compiling a word (non-zero)? */
forth_variable(STATE, 5, ctx, vars, $vars_of_state);
forth_variable(HERE, 5, ctx, user, $stack_of_head); // get pointer to current user word location

// Follows Jone's Forth here
forth_docall("create", 4, F_NORMAL, create, "( n -- )", docreate);
forth_docall(",", 4, F_NORMAL, comma, "( n -- )", docomma);
forth_docall("[", 4, F_IMMED, lbrac, "( n -- )", dolbrac);
forth_docall("]", 4, F_NORMAL, rbrac, "( n -- )", dorbrac);
forth_docall("xmask", 4, F_NORMAL, xmask, "( n -- )", doxmask);

forth_docall("word", 4, F_NORMAL, word, "( -- )", doword);
forth_docall("number", 6, F_NORMAL, number, "( c n -- n )", donumber);
forth_docall("find", 4, F_NORMAL, find, "( c n -- )", dofind);

forth_docall("emit", 4, F_NORMAL, emit, "( n -- )", doemit);
/* forth_docall(">cfa", 4, F_NORMAL, cfa, "( p -- )", docfa); */

forth_docall("ret", 4, F_NORMAL, exerr, "( n -- )", doret);

forth_word(":", 6, F_NORMAL, colon, "( p -- )",
           XT(word), // Get the name of the new word
           XT(create), // CREATE the dictionary entry / header
           XT(lit), XT(docolon), XT(comma), // Append DOCOLON (the codeword).
           XT(rbrac), // Go into compile mode.
           XT(exits), // Return from the function.
           );

forth_word(";", 6, F_NORMAL, semicolon, "( p -- )",
           XT(lit), XT(exits), XT(comma), // Append EXIT (so the word will return).
           XT(lit), (fcell_xt)F_HIDDEN, XT(xmask), // Toggle hidden flag -- unhide the word
           XT(lbrac), // Go back to IMMEDIATE mode.
           XT(exits), // Return from the function.
           );

forth_word("immed", 5, F_IMMED, immed, "( p -- )",
    XT(lit), (fcell_xt)F_IMMED, XT(xmask), // Toggle hidden flag -- unhide the word
  );

forth_core("'", 1, F_NORMAL, tick, "( p -- )", {
    // Get address of next word from codeword list (e.g. same as lit)
    load_addr(x, ip);
    incr_reg(ip);

    // Push value on stack
    pushd(tos);
    copy_reg(tos, x);
    jump(next);
  });

/* Executes word on tos */
forth_core("exec", 6, F_NORMAL, exec, "( n -- )", {
    copy_reg(x, tos);
    popd(tos);
    jump_reg(x);
  });

/* Increments the IP by offset to affect branching */
forth_core("branch", 6, F_NORMAL, branch, "{offset} ( -- )", {
    load_addr(x, ip);
    add_reg(ip, x);
    jump(next);
  });

/* Increments the IP by offset to affect branching */
forth_core("0branch", 7, F_NORMAL, zbranch, "{offset} ( -- )", {
    if (tos == 0) {
      load_addr(x, ip);
      add_reg(ip, x);
    } else {
      add_const(ip, $word_ptr_sz);
    }
    jump(next);
  });

forth_word("ifthen", 5, F_IMMED, ifthen, "( -- )",
           XT(tick), XT(zbranch), XT(comma),
           XVT(HERE),
           XT(fetch),
           XT(lit), 0,
           XT(comma),
           );

forth_word("else", 5, F_IMMED, else_, "( -- )",
           XT(tick), XT(branch), XT(comma),
           XTV(HERE), XT(fetch),
           XT(lit), 0, XT(comma),
           XT(swap),
           XT(dup),
           XTV(HERE), XT(fetch), XT(swap), XT(sub),
           XT(swap), XT(store),
           );

forth_word("end", 5, F_IMMED, end, "( -- )",
           XT(dup),
           XTV(HERE), XT(fetch), XT(swap), XT(sub),
           XT(swap), XT(store),
           );


/*
  32 word find
   ifthen
      state @ =
        ifthen
          ,
        else
          execute
        end
   else
      dup rot count >number
        ifthen
          state @
            ifthen
              last @ dup @ last ! dp !
            end
            abort
        end
        drop drop state @
          ifthen
            ' lit , ,
          end
   end
*/

// try parsing number and compiling or running
forth_word("itpnum", 6, F_NORMAL, itpnum, "{tib} ( -- *c l )",
           XT(number),
           XT(ifthen),

              XT(lit), XT(FW_ERR_NOWORD),
              XT(ret),

           XT(else_),

              XTV(STATE), XT(fetch),

              XT(ifthen),
                XT(tick), XT(lit), XT(comma),
                XT(comma),
              XT(else_),
                XT(exec),
              XT(end),

           XT(end),
           );

// try finding word and run if compiling, or execute if immediate
forth_word("itpnext", 7, F_NORMAL, itpnext, "{tib} ( -- *c l )",
           XT(find),
           XT(ifthen),

              XTV(STATE),
              XT(fetch),

              XT(ifthen),
                XT(comma),
              XT(else_),
                XT(exec),
              XT(end),

           XT(else_),
              XT(itpnum),
           XT(end),
           );


forth_word("interpret", 9, F_NORMAL, tick, "( p -- )",
           XT(word),
           XT(ifthen),
              XT(itpnext),
           XT(else_),
              XT(drop),
              XT(ret),
           XT(end),
           );


/* /\* */
/*   From Jone's Forth: */
/* 	This interpreter is pretty simple, but remember that in FORTH you can always override */
/* 	it later with a more powerful one! */
/*  *\/ */
/* forth_core("interpret", 9, F_NORMAL, interpret, "( n -- )", { */
/*     call(doword);		// Returns %ecx = length, %edi = pointer to word. */

/*     // Is it in the dictionary? */
/*     xor_reg(x, x); /\* xor %eax,%eax *\/ */

/* 	movl %eax,interpret_is_lit // Not a literal number (not yet anyway ...) */
/* 	call _FIND		// Returns %eax = pointer to header or 0 if not found. */
/* 	test %eax,%eax		// Found? */
/* 	jz 1f */

/* 	// In the dictionary.  Is it an IMMEDIATE codeword? */
/* 	mov %eax,%edi		// %edi = dictionary entry */
/* 	movb 4(%edi),%al	// Get name+flags. */
/* 	push %ax		// Just save it for now. */
/* 	call _TCFA		// Convert dictionary entry (in %edi) to codeword pointer. */
/* 	pop %ax */
/* 	andb $F_IMMED,%al	// Is IMMED flag set? */
/* 	mov %edi,%eax */
/* 	jnz 4f			// If IMMED, jump straight to executing. */

/* 	jmp 2f */

/* 1:	// Not in the dictionary (not a word) so assume it's a literal number. */
/* 	incl interpret_is_lit */
/* 	call _NUMBER		// Returns the parsed number in %eax, %ecx > 0 if error */
/* 	test %ecx,%ecx */
/* 	jnz 6f */
/* 	mov %eax,%ebx */
/* 	mov $LIT,%eax		// The word is LIT */

/* 2:	// Are we compiling or executing? */
/* 	movl var_STATE,%edx */
/* 	test %edx,%edx */
/* 	jz 4f			// Jump if executing. */

/* 	// Compiling - just append the word to the current dictionary definition. */
/* 	call _COMMA */
/* 	mov interpret_is_lit,%ecx // Was it a literal? */
/* 	test %ecx,%ecx */
/* 	jz 3f */
/* 	mov %ebx,%eax		// Yes, so LIT is followed by a number. */
/* 	call _COMMA */
/* 3:	NEXT */

/* 4:	// Executing - run it! */
/* 	mov interpret_is_lit,%ecx // Literal? */
/* 	test %ecx,%ecx		// Literal? */
/* 	jnz 5f */

/* 	// Not a literal, execute it now.  This never returns, but the codeword will */
/* 	// eventually call NEXT which will reenter the loop in QUIT. */
/* 	jmp *(%eax) */

/* 5:	// Executing a literal, which means push it on the stack. */
/* 	push %ebx */
/* 	NEXT */

/* 6:	// Parse error (not a known word or a number in the current BASE). */
/* 	// Print an error message followed by up to 40 characters of context. */
/* 	mov $2,%ebx		// 1st param: stderr */
/* 	mov $errmsg,%ecx	// 2nd param: error message */
/* 	mov $errmsgend-errmsg,%edx // 3rd param: length of string */
/* 	mov $__NR_write,%eax	// write syscall */
/* 	int $0x80 */

/* 	mov (currkey),%ecx	// the error occurred just before currkey position */
/* 	mov %ecx,%edx */
/* 	sub $buffer,%edx	// %edx = currkey - buffer (length in buffer before currkey) */
/* 	cmp $40,%edx		// if > 40, then print only 40 characters */
/* 	jle 7f */
/* 	mov $40,%edx */
/* 7:	sub %edx,%ecx		// %ecx = start of area to print, %edx = length */
/* 	mov $__NR_write,%eax	// write syscall */
/* 	int $0x80 */

/* 	mov $errmsgnl,%ecx	// newline */
/* 	mov $1,%edx */
/* 	mov $__NR_write,%eax	// write syscall */
/* 	int $0x80 */

/* 	NEXT */
/* }); */
