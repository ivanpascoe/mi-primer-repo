defmodule Strngs do

  def try() do

    text = "ALGÚN texto"
    String.jaro_distance(text, "algun texto")
    # String.graphemes(text)
    # String.equivalent?(text, "ALGUN texto") --> true
    # String.ends_with?(text, ["exo", "claro"]) --> False
    # String.duplicate(text, 3) --> "ALGUN textoALGUN textoALGUN texto"
    # String.downcase(text)
    # String.contains?(text, "texto") --> true
    # String.contains?(text, "ttoex") --> False
    # String.codepoints(text) --> ["A", "L", "G", "U", "N", " ", "t", "e", "x", "t", "o"]
    # String.chunk(<<text, 0>> :valid) this one i dont get it :(
    # String.capitalize(text) --> works but has issues with unicode
    # String.bag_distance("ALGUN texto", text) --> ammount of correspondency from 0 to 1
    # String.at(text, 9)

  end


end
