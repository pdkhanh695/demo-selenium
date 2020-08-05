# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :selenDriver102,
  ecto_repos: [SelenDriver102.Repo]



# Configures the endpoint
config :selenDriver102, SelenDriver102Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qsxpgZ57EqkElNUe0TeMf+1/G8nsn+dROg/ivnbkBuxFPFosp6jv5lL6Uzp2N0y3",
  render_errors: [view: SelenDriver102Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SelenDriver102.PubSub,
  live_view: [signing_salt: "gL1tt3Om"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :hound, driver: "phantomjs"
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

