# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :storel,
  ecto_repos: [Storel.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :storel, StorelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h/03nWbvDQsCtJ3H+Bsml5iRUXCWi+Ue0Lbp7IXoOSLd5Y+wmPEwetJcY98yT6Zu",
  render_errors: [view: StorelWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Storel.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "OFVhoIlU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
