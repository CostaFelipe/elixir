# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_test,
  ecto_repos: [ApiTest.Repo]

# Configures the endpoint
config :api_test, ApiTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XjNq1EbFgNSE+GtbIdtdh4IY6VfR7/BvXznXLt31tST10yTIjz82Qs9yWuml/tA+",
  render_errors: [view: ApiTestWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ApiTest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "lSgBj4Z6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
