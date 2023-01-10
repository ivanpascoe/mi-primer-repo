defmodule Mapps do

  def mapa, do: %{a: 32, b: 34, c: 25, d: 15, e: 12}

  def try() do
    mapiux = %{at: 3, be: 4, ce: 5, de: 1, ee: 2}
    Map.pop!(mapa, :d)
    # Map.merge(mapa,mapiux)
    # Map.keys(mapiux)
    # Map.get_and_update(mapa, :b, fn value -> {value, 57} end)
    # Map.get(mapa, :f, "bad gate")

  end

end
