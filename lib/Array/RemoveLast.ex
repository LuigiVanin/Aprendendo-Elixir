defmodule Array.RemoveLast do
  def solution([]), do: []

  def solution(array) do
    array = Enum.reverse(array)

    [_ | response] = array

    Enum.reverse(response)
  end
end
