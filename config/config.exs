# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sales_web_server,
  ecto_repos: [SalesWebServer.Repo]

# Configures the endpoint
config :sales_web_server, SalesWebServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yjQNpsi0CiqlyNbX5Pxj6Gh24uYKD023TZ002PP0/aZa/mboxFHiOotA5dJDN44p",
  render_errors: [view: SalesWebServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SalesWebServer.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "/xl/m2aL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
