defmodule ReactWebpack.TodoChannel do
  use ReactWebpack.Web, :channel

  alias ReactWebpack.TodoServer

  def join("todos", _params, socket) do
    todos = TodoServer.all()

    {:ok, %{todos: todos}, socket}
  end

  def handle_in("new:todo", params, socket) do
    todo = params["text"]

    TodoServer.add(todo)

    broadcast! socket, "new:todo", %{
      text: todo
    }

    {:noreply, socket}
  end
end