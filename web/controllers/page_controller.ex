defmodule KanbanTrello.PageController do
  use KanbanTrello.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
