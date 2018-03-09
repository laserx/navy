# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wharf,
  namespace: Wharf

# Configures the endpoint
config :wharf, WharfWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JUENhNTnZWcHsqtX4TaT0FmXIwCrktx13/oN3yQBpPFGqR74fMm5bezE0F9TUsG3",
  render_errors: [view: WharfWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Wharf.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
