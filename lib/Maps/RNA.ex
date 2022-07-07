defmodule Maps.RNA do
  @rna_transcription %{
    "A" => "T",
    "G" => "C",
    "U" => "A"
  }

  def solution(rna_string) do
    rna_string
    |> String.upcase()
    |> String.graphemes()
    |> Enum.map(fn char ->
      Map.get(@rna_transcription, char, "")
    end)
    |> List.to_string()
  end
end
