# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :planr,
  ecto_repos: [Planr.Repo]

# Configures the endpoint
config :planr, Planr.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U61Auo3PrNLlZFTpGw4cfxn2VNeCpHobWl9eOgttRfWzkqyq/h78Yqb6mEhu8xQr",
  render_errors: [view: Planr.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Planr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
