defmodule Loop.WhilePrint do
  @moduledoc """
  Escreva a função solution(), que se não receber parâmetros imprime os números de 1 a 10.
  Caso receba deve ser um Array, a função deve impromir todos os seus valores
  """
  def solution(value) when value == nil, do: :error

  def solution([]), do: :ok

  def solution([head | rest]) do
    IO.puts(head)
    solution(rest)
  end

  def solution(value), do: IO.puts(value)

  def solution() do
    1..10
    |> Enum.to_list()
    |> solution()
  end
end
