defmodule AscensionService do
  use HTTPoison.Base

  @expected_fields ~w(
    data
  )

  def process_url(url) do
    "http://localhost:4001" <> url
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Map.take(@expected_fields)
    |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
  end
  
end