# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crud_users,
  ecto_repos: [CrudUsers.Repo]

# Configures the endpoint
config :crud_users, CrudUsersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mpFIRQ8oqC9VL+YP6qpHfRVwTc/GLCFT1XB6GW1U54Ii/Lp5AC9rUQ0vEcL4ENZ2",
  render_errors: [view: CrudUsersWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CrudUsers.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "NmRa/rLW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
