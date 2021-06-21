defmodule BlogapiWeb.Router do
  use BlogapiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogapiWeb do
    pipe_through :api
  end
end
