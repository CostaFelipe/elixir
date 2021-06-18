defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end

  def ficha(conn, %{"nome" => nome, "sobrenome" => sobrenome}) do
    render(conn, "somar.html", nome: nome, sobrenome: sobrenome)
  end
end
