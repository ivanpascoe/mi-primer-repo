defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "greets the world" do
    assert Physics.hello() == :world
  end
end
