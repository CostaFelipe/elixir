# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :teste_api,
  ecto_repos: [TesteApi.Repo]

# Configures the endpoint
config :teste_api, TesteApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XNWdx0QfdKAfcSFdZ4FJ2TyzwCLhk2YlU6n80/b233NCGd4yqbQCN7+Oh43mGDeS",
  render_errors: [view: TesteApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TesteApi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "ew4lqAuK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
