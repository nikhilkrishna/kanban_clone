# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :kanban_trello, KanbanTrello.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "qIh990uEw94Pjc6L+Rkkt8m4Cz65yBmp2EctA2gVCYF70vqTF9nmHG5PReVZDzr+",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: KanbanTrello.PubSub,
           adapter: Phoenix.PubSub.PG2]

#configure Guardian 
config :guardian, Guardian,
  issuer: "KanbanTrello",
  ttl: { 3, :days},
  verify_issuer: true,
  secret_key: '',
  serializer: KanbanTrello.GuardianSerializer

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
