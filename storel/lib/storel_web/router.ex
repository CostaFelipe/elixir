defmodule StorelWeb.Router do
  use StorelWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", StorelWeb do
    pipe_through :api
  end
end
