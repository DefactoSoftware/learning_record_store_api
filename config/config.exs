# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :learning_record_store_api,
  ecto_repos: [LearningRecordStoreApi.Repo]

# Configures the endpoint
config :learning_record_store_api, LearningRecordStoreApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/F0mGpFd+C5i9x/JPJLJfZbk9ZGKeB7xq64x0YP0pcthMCBS3A6aR0UUb0GIRIG7",
  render_errors: [view: LearningRecordStoreApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: LearningRecordStoreApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
