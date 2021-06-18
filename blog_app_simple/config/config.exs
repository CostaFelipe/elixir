# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_app_simple,
  ecto_repos: [BlogAppSimple.Repo]

# Configures the endpoint
config :blog_app_simple, BlogAppSimpleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U4v3v7jqQYILh5qCEN8C+LfJWa/lZngXACrBqXE+2XH+UIwKVEWTUAkFvMh6wIYO",
  render_errors: [view: BlogAppSimpleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogAppSimple.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "9Nz/rCGx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
