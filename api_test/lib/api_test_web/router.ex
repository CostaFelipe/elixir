defmodule ApiTestWeb.Router do
  use ApiTestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiTestWeb do
    pipe_through :api
  end
end
