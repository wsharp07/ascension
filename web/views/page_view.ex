defmodule Ascension.PageView do
  use Ascension.Web, :view

  defp get_servers() do
    AscensionService.start

    AscensionService.get!("/api/servers").body[:data] 
    |> Enum.map(fn(x) -> Map.get(x,"attributes") end)
  end
end
