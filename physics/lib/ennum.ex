defmodule Ennum do
  def mapa, do: %{producto: :cheve, costo: 32}
  def lista, do: [32, 34, 25, 15, 12]
  def data, do: [:atom, "string", 45]

  def try() do
    mapa = [23, 23, 35, 40 , 12, 23, 56]
    #  Enum.fetch(mapa,7)
    # Enum.drop_every(mapa, 5)
    # mapa = [23, 23, 35, 40 , 12, 23, 56]
    # Enum.drop(mapa, 7)

      # mapa = [23..30, 45..49, 12..15]
      # Enum.concat(mapa)
      # resultado [23, 24, 25, 26, 27, 28, 29, 30, 45, 46, 47, 48, 49, 12, 13, 14, 15]

      # mapa = [[23, [12, 13], 15], [24, 345] ]
      # Enum.concat(mapa)
      # resultado [23, [12, 13], 15, 24, 345]
    # Enum.chunk_by(mapa, (fn(x) -> rem(x, 2) ==1 end))
    #  [[23], '\f', [13, 15]]
    #  "stri\\\"ng"
    # Enum.empty?(mapa)
    # Enum.count(mapa)
    # Enum.any?(mapa)
    # Enum.all?(mapa, fn(x) -> x < 100 end)
    # Enum.map(mapa, fn(x) -> x * 3.1 end)
    #   |> Enum.max juganding
  end
end
