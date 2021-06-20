defmodule BlogApiSimplePost.Repo do
  use Ecto.Repo,
    otp_app: :blog_api_simple_post,
    adapter: Ecto.Adapters.Postgres
end
