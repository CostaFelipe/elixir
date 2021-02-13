defmodule PostWeb.Router do
  use PostWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PostWeb do
    pipe_through :api
  end
end
