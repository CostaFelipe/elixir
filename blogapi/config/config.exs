# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blogapi,
  ecto_repos: [Blogapi.Repo]

# Configures the endpoint
config :blogapi, BlogapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uKoD/KjDRzcmAy7/ReoLVTf7zgVxXuYshc0NuyQZi8LzExRfcI+P3Fux7nINttnE",
  render_errors: [view: BlogapiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Blogapi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "qIhEhpia"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
