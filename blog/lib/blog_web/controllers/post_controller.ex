defmodule BlogWeb.PostController do
  use BlogWeb, :controller

  def create(conn, params) do
    IO.inspect conn
    IO.inspect params
  end
end
