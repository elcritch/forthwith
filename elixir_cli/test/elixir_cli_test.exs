defmodule ElixirCliTest do
  use ExUnit.Case
  doctest ElixirCli

  test "greets the world" do
    assert ElixirCli.hello() == :world
  end
end
