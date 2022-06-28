defmodule Array.TakeOut do
  @moduledoc """
  separe um array em dois apartir de um determinado número
  """

  def solution([head | rest], num) do
    if head == num, do: {[head], rest}, else: solution(rest, num, [head])
  end

  defp solution([], __num, back), do: {back, []}

  defp solution([head | rest], num, back) do
    if head == num do
      {[head | back], rest}
    else
      solution(rest, num, [head | back])
    end
  end
end
