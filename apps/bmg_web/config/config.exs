# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bmg_web,
  namespace: BmgWeb,
  ecto_repos: [Bmg.Repo]

# Configures the endpoint
config :bmg_web, BmgWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y1DQnKHLrgndqS3QgTjJt2n/qcK1k14tfaP/6YA6DsGIVab+i8wCN9O2Xgw4j8el",
  render_errors: [view: BmgWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BmgWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :bmg_web, :generators,
  context_app: :bmg

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
