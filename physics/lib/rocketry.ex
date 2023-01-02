defmodule Rocketry do

  import Converter
  import Calcs
  import Physics.Laws
  import Planets

  def escape_velocity(:moon), do: moon() |> escape_velocity()
  def escape_velocity(:mars), do: mars() |> escape_velocity()
  def escape_velocity(:earth), do: earth() |> escape_velocity()


  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> to_km
      |> to_nearest_tenth
  end

  def orbital_speed(height, mass, radius) do
    newtons_gravitational_constant() * mass / orbital_radius(height, radius)
      |> square_root
  end

  def orbital_acceleration(height, mass, radius), do:
		orbital_speed(height, mass, radius) |> squared()

  defp orbital_radius(height, radius), do: radius + (height |> to_meters())

  defp calculate_escape(%{mass: mass, radius: radius}) do
    (2 * newtons_gravitational_constant() * mass / radius)
		|> square_root()
  end

end
