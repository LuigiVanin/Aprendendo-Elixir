defmodule Array.RemoveIndex do
  def solution([], _) do
    []
  end

  def solution([_ | rest], index) when index == 0, do: rest

  def solution([head | rest], index) do
    solution(rest, index, [head], 1)
  end

  defp solution([], _, back, _) do
    back
  end

  defp solution([head | rest], index, back, count) do
    if index == count do
      back ++ rest
    else
      solution(rest, index, back ++ [head], count + 1)
    end
  end
end
