# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :medium_api_graphql,
  ecto_repos: [MediumApiGraphql.Repo]

# Configures the endpoint
config :medium_api_graphql, MediumApiGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ppSzRHT5lWg2k3Id6Or50sg68tOngP+9b9+pWwhkURbRVa19bh4VL0exZ3XrpF7R",
  render_errors: [view: MediumApiGraphqlWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MediumApiGraphql.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "8zdedViH"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
