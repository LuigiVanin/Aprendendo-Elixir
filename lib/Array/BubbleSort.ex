defmodule Array.BubbleSort do
  def solution([]), do: []

  def solution(array) do
    sort(array)
  end

  def sort(array) do
    sort_it(array)
    |> sort_or_pass(array)
  end

  def sort_or_pass(array, old_array) do
    if array != old_array do
      sort(array)
    else
      array
    end
  end

  defp sort_it(array, back \\ [])

  defp sort_it([i, j | []], back) do
    [bottom, top] = swap(i, j)
    back ++ [bottom, top]
  end

  defp sort_it([i, j | rest], back) do
    [bottom, top] = swap(i, j)
    sort_it([top] ++ rest, back ++ [bottom])
  end

  defp swap(i, j) do
    case [i, j] do
      [i, j] when i > j -> [j, i]
      _ -> [i, j]
    end
  end
end
