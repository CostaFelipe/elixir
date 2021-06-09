defmodule HelloWeb.TestController do
  use HelloWeb, :controller

  def  test(conn, _params)do
    render(conn, "index.html")
  end
end
