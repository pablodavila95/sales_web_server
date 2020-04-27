defmodule SalesWebServer.Repo do
  use Ecto.Repo,
    otp_app: :sales_web_server,
    adapter: Ecto.Adapters.Postgres
end
