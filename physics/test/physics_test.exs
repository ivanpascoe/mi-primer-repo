defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics
  doctest Converter

  test "escape velocity of the earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth)
    assert ev == 11.2
  end

  test "escape velocity of planet x is correct" do
    %{mass: 4.0e22, radius: 6.21e6}
      |> Physics.Rocketry.escape_velocity
  end
end
