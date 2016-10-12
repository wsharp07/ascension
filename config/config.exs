# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ascension,
  ecto_repos: [Ascension.Repo]

# Configures the endpoint
config :ascension, Ascension.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3aUTts3vzrl/BfJ6VdIn9Koh9VVjddykjktlxUDAVUu7cdz5dLdXbiHf1BrABt45",
  render_errors: [view: Ascension.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ascension.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
