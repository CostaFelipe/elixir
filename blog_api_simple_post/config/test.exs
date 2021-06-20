use Mix.Config

# Configure your database
config :blog_api_simple_post, BlogApiSimplePost.Repo,
  username: "postgres",
  password: "postgres",
  database: "blog_api_simple_post_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blog_api_simple_post, BlogApiSimplePostWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
