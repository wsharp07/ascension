defmodule AscensionService.HttpClient do
    @behaviour AscensionService
    def get_servers do
       AscensionService.Provider.get!("/api/servers").body[:data]
       |> Enum.map(fn(x) -> Map.get(x,"attributes") end) 
    end
end