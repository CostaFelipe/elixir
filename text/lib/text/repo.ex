defmodule Text.Repo do
  use Ecto.Repo,
    otp_app: :text,
    adapter: Ecto.Adapters.Postgres
end
