defmodule Maps.HowManyOdds do
  def solution(array, key) do
    array
    |> Enum.reduce(%{}, fn item, acc ->
      Map.put(acc, item, Map.get(acc, item, 0) + 1)
    end)
    |> Map.get(key, 0)
  end

  def solution2(array, key) do
    solution2(array, key, %{})
  end

  def solution2([head | rest], key, map) do
    new_map =
      map
      |> Map.put(key, Map.get(map, head, 0) + 1)

    solution2(rest, key, new_map)
  end
end
