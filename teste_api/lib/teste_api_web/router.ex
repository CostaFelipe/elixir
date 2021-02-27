defmodule TesteApiWeb.Router do
  use TesteApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TesteApiWeb do
    pipe_through :api
  end
end
