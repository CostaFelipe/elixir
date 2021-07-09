defmodule MediumApiGraphql.Repo do
  use Ecto.Repo,
    otp_app: :medium_api_graphql,
    adapter: Ecto.Adapters.Postgres
end
