defmodule Converter do

  @doc """
  This function rounds up to the nearest tenth

  ## Example
      iex> Converter.to_nearest_tenth(1.234)
      1.3
  """
  def to_nearest_tenth(val), do: Float.ceil(val,1)
  def to_km(velocity),       do: velocity / 1000
  def to_meters(val),        do: val * 1000

  def to_light_seconds({:miles, miles}, precision: precision) do
    (miles * 5.3681e-6) |> round_to(precision)
  end

  def to_light_seconds({:meters, meters}, precision: precision) do
    (meters * 3.335638620368e-9) |> round_to(precision)
  end

  def to_light_seconds({:feet, feet}, precision: precision) do
    (feet * 3.335638620368e-9) |> round_to(precision)
  end

  def round_to(val, precision) when is_float(val) do
    Float.round(val,precision)
  end

end
