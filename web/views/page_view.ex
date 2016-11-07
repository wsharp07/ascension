defmodule Ascension.PageView do
  use Ascension.Web, :view
  alias Ascension.ServerRepo

  defp get_servers() do
    ServerRepo.get_all
  end
end
