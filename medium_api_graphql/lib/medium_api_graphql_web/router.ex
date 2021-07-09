defmodule MediumApiGraphqlWeb.Router do
  use MediumApiGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MediumApiGraphqlWeb do
    pipe_through :api
  end
end
