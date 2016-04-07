ExUnit.start

Mix.Task.run "ecto.create", ~w(-r KanbanTrello.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r KanbanTrello.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(KanbanTrello.Repo)

