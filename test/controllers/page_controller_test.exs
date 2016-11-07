defmodule Ascension.PageControllerTest do
  use Ascension.ConnCase
  use ExUnit.Case

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Hello ascension!"
  end
end
