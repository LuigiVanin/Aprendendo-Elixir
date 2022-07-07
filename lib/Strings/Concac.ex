defmodule Strings.Concac do
  def solution([]), do: ""

  def solution([head | rest]) do
    solution(rest, "" <> head)
  end

  defp solution([], res), do: res

  defp solution([head | rest], res) do
    solution(rest, res <> head)
  end
end
