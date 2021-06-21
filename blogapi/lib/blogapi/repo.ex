defmodule Blogapi.Repo do
  use Ecto.Repo,
    otp_app: :blogapi,
    adapter: Ecto.Adapters.Postgres
end
