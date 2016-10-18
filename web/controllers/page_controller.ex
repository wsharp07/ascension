defmodule Ascension.PageController do
  use Ascension.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def servers(conn, _params) do
    servers = 
      AscensionService.get!("/api/servers").body[:data] 
      |> Enum.map(fn(x) -> Map.get(x,"attributes") end)

    render conn, servers
  end
end
