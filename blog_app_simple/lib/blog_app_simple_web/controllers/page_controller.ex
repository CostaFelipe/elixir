defmodule BlogAppSimpleWeb.PageController do
  use BlogAppSimpleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
