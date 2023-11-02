# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :books_api,
  ecto_repos: [BooksApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :books_api, BooksApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YVwL+2S1vE3r1ZiKNKb+qc0xy3nhK8jAw+EXEjeuqRo+K/zq1QeUmeJhjN+8GFDt",
  render_errors: [view: BooksApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BooksApi.PubSub,
  live_view: [signing_salt: "cELi89vd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
