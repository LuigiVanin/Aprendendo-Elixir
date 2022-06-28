defmodule Files.MyLines do
  def solution(""), do: :error

  def solution(path) do
    file_text = File.read(path)

    if file_text == :error do
      :error
    else
      file_text
      |> elem(1)
      |> String.split("\n", trim: true)
    end
  end
end
