use Mix.Config

# Configure your database
config :medium_api_graphql, MediumApiGraphql.Repo,
  username: "postgres",
  password: "postgres",
  database: "medium_api_graphql_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :medium_api_graphql, MediumApiGraphqlWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
