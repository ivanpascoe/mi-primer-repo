defmodule Solar do
  def power(%{classification: :M, scale: s}), do: s * 10
  def power(%{classification: :X, scale: s}), do: s * 1000
  def power(%{classification: :C, scale: s}), do: s * 1
  def no_eva(flares), do: Enum.filter flares, &(power(&1) > 1000)

  def deadliest(flares) do
    Enum.map(flares, &(power(&1)))
      |> Enum.max
  end

  def flare_list(flares) do
    result =
      Enum.map flares, fn(flare) ->
        p = power(flare)
        %{power: p, is_deadly: p >1000}
      end

    IO.inspect(result)
    result
  end


  def total_flare_power(list) do
    Enum.reduce list, 0, fn(flare, total) ->
      power(flare) + total
   end
  end
end
