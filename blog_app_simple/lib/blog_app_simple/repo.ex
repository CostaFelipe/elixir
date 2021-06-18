defmodule BlogAppSimple.Repo do
  use Ecto.Repo,
    otp_app: :blog_app_simple,
    adapter: Ecto.Adapters.Postgres
end
