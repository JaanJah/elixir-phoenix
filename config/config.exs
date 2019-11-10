# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_phoenix,
  ecto_repos: [ElixirPhoenix.Repo]

# Configures the endpoint
config :elixir_phoenix, ElixirPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bszoAIaApc7bjZVkiWU8L0u+4hK8CUCOdNWRnLNipA6z2aWpvKZQ9/ux2vTVv/3U",
  render_errors: [view: ElixirPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirPhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
