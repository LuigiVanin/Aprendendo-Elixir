defmodule Array.SplitIt do
  @moduledoc """
  separe um array em dois apartir de um determinado número
  """
  def solution([], __num), do: []

  def solution([head | rest], num) do
    if head == num, do: {[head], rest}, else: solution(rest, num, [head])
  end

  defp solution([], __num, back), do: {Enum.reverse(back), []}

  defp solution([head | rest], num, back) do
    if head == num do
      {Enum.reverse([head | back]), rest}
    else
      solution(rest, num, [head | back])
    end
  end
end
