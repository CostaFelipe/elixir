defmodule TextWeb.PageController do
  use TextWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
