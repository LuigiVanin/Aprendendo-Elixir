defmodule Loop.PrintInterval do
  @moduledoc """
  Nesse exercício escreva a função printInterval(x, y), que recebe
  dois números como parâmetros e imprime todos os números no intervalo [x,y].
  """

  @spec solution(number, number) :: [number]
  def solution(x, y) do
    x..y
    |> Enum.each(&IO.puts(&1))
  end
end
