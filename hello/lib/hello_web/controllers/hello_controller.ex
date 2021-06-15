defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end

  def adicionar(conn, %{"a" => a, "b" => b}) do
    render(conn, "somar.html", a: a, b: b)
  end
end
