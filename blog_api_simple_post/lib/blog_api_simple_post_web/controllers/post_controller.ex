defmodule BlogApiSimplePostWeb.PostController do
  use BlogApiSimplePostWeb, :controller
  alias BlogApiSimplePost.Posts

  def create(conn, %{"post" => post}) do
    Posts.create_post()
  end
end
