defmodule Strings.Polindrome do
  @moduledoc """
  Descubra se um texto é um polindromo
  """
  def solution(text) do
    text == String.reverse(text)
  end
end
