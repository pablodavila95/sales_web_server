use Mix.Config

# Configure your database
config :sales_web_server, SalesWebServer.Repo,
  username: "postgres",
  password: "postgres",
  database: "sales_web_server_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sales_web_server, SalesWebServerWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
