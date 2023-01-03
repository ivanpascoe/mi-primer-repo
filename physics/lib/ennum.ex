defmodule Ennum do
  def mapa, do: %{producto: :cheve, costo: 32}
  def lista, do: [a: 32, b: 34, c: 25, d: 15, e: 12]
  def data, do: [:atom, "strIng", 45, a: :keyword]

  def try() do
    dat = [35, 40 , 12, 23, 56]
    Enum.random(lista())

      # Enum.random(1..5000) - Entrega un numero al azar de la lista o dentro de un rango.
      # Enum.product(dat)  -- Multiplica los elementos
      # Enum.join(dat, " / ") - Une los elementos y permite especificar un separador
      # Enum.intersperse(dat, 0) - intrduce eel caracter dado entre los elementos
      # Enum.group_by(~w{ant buffalo cat dingo}, &String.length/1, &String.first/1)
      # Enum.group_by(~w{ant buffalo cat dingo}, &String.length/1)
      # Enum.frequencies_by(~w{aaa aA bbb cc c}, &String.length/1)
      #  Enum.frequencies(ant buffalo ant ant buffalo dingo)
      # dat = [35, 40 , 12, 23, 56]
      # Enum.flat_map_reduce(dat, 0, fn x, acc ->{[[x]], acc + x} end)
      # Enum.flat_map(dat, fn x -> [x, x] end)
      #  Enum.map(lista(), fn {k,v} -> {k, v} end
      #  Enum.find_value(mapa, fn x -> rem(x, 2) == 0 end)
      # Enum.filter(mapa, fn x -> rem(x, 2) == 0 end)
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
    #  Enum.into(lista(), %{})
end
