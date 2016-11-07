defmodule Ascension.PageController do
  use Ascension.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
end
