# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :qna_phoenix,
  ecto_repos: [QnaPhoenix.Repo]

# Configures the endpoint
config :qna_phoenix, QnaPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZxG9NJI1WGcrWCvsnjSUffIoNv6DLl/md1a8ZnGYxdV5mouMIssfcQxqobfLoGG1",
  render_errors: [view: QnaPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: QnaPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
