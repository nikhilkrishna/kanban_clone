use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :kanban_trello, KanbanTrello.Endpoint,
  secret_key_base: "JM299lL0SSNQuWVeIhHnFJMujp4z7VcJqHE26rA8yFZhjjwAbeNTYNf9KK6idTs1"

# Configure your database
config :kanban_trello, KanbanTrello.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "kanban_trello_prod",
  pool_size: 20
