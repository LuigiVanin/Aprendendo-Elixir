defmodule Strings.FindMyName do
  def solution(text, name) do
    index =
      text
      |> String.split(" ", trim: true)
      |> Enum.find_index(fn sub -> sub == name end)

    if index != nil do
      text
      |> String.split(name, trim: true)
      |> List.first()
      |> String.length()
      |> (&(&1 - 1)).()
      |> (&{&1, String.length(name)}).()
    else
      nil
    end
  end
end
