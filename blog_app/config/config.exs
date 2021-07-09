# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_app,
  ecto_repos: [BlogApp.Repo]

# Configures the endpoint
config :blog_app, BlogAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jvkdSxVb7f0fIWTceQKVEEv4b/uh7clj1E4im4yyub0D69D4rGk/nT2jzSWLn6zY",
  render_errors: [view: BlogAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogApp.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "ch2DVnt9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
