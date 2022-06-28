defmodule Loop.RandomGen do
  def solution(min_number \\ 80)

  def solution(min_number) when min_number < 1, do: nil

  def solution(min_number) do
    num =
      Enum.random(1..100)
      |> IO.inspect()

    if num > min_number do
      :ok
    else
      solution(min_number)
    end
  end
end
