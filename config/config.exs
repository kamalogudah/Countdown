# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :countdown,
  ecto_repos: [Countdown.Repo]

# Configures the endpoint
config :countdown, CountdownWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jqCSAFZmmE79iWON4YjN0pTBKxA+QL2bGWemMx4u24tHkMfv2NgHiss1ylwZ3Dju",
  render_errors: [view: CountdownWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Countdown.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
