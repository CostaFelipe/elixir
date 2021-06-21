defmodule BlogApiSimplePostWeb.Router do
  use BlogApiSimplePostWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogApiSimplePostWeb do
    pipe_through :api

    post "/posts", PostController, :create
  end
end