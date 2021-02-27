defmodule TesteApi.Repo do
  use Ecto.Repo,
    otp_app: :teste_api,
    adapter: Ecto.Adapters.Postgres
end
