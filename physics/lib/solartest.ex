defmodule Solartest do
  use ExUnit.Case
  use Timex

  setup do
     flares = [
      %{calssification: :X, scale: 99, date: Date.from({1859,8,29})},
      %{calssification: :M, scale: 5.8, date: Date.from({2015,1,12})},
      %{calssification: :M, scale: 1.2, date: Date.from({2015,2,9})},
      %{calssification: :C, scale: 3.2, date: Date.from({2015,4,18})},
      %{calssification: :M, scale: 83.6, date: Date.from({2015,6,23})},
      %{calssification: :C, scale: 2.5, date: Date.from({2015,7,4})},
      %{calssification: :X, scale: 72, date: Date.from({2012,7,23})},
      %{calssification: :X, scale: 45, date: Date.from({2003,11,4})},
    ]
{:ok, data: flares}
  end


  test "We have 8 solar flares", %{data: flares} do
    assert length(flares) == 8
  end
  test "Go inside", %{data: flares} do
    d = Solar.no_eva(flares)
    assert length(d) == 3
  end
  test "Deadliest", %{data: flares} do
    d = Solar.deadliest(flares)
    assert d == 99000
  end
end
