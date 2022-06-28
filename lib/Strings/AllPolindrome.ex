defmodule Strings.AllPolindrome do
  @moduledoc """
  Achar polidromos em qualquer substring do texto
  """
  def solution(text) do
    for i <- String.length(text)..1 do
      for j <- 0..(String.length(text) - i) do
        text
        |> String.slice(j, i)
      end
    end
    |> List.flatten()
    |> Enum.filter(fn sub ->
      sub == String.reverse(sub) and String.length(sub) > 1
    end)
    |> Enum.uniq()
  end
end
