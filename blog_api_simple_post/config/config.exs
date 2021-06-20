# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_api_simple_post,
  ecto_repos: [BlogApiSimplePost.Repo]

# Configures the endpoint
config :blog_api_simple_post, BlogApiSimplePostWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tX1TpPlcxyrE+K9r+LmjYKKuDh7FZU6MQFjxRC2t9mbD8WDvmYsgbPajb3Tn2CY/",
  render_errors: [view: BlogApiSimplePostWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BlogApiSimplePost.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "AYb0Oty0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
