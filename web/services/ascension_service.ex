defmodule AscensionService do
  @doc "Returns an Enumerable of Servers"
  @callback get_servers() :: [%{}]
end