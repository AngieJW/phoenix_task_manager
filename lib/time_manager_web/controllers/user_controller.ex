defmodule YourAppWeb.UserController do
  use YourAppWeb, :controller

  def render("index.json", %{tasks: tasks}) do
    %{data: Enum.map(tasks, &task_json/1)}
  end

  def render("show.json", %{task: task}) do
    %{data: task_json(task)}
  end

  def render("create.json", %{task: task}) do
    %{data: task_json(task)}
  end

  def render("update.json", %{task: task}) do
    %{data: task_json(task)}
  end

  def render("delete.json", %{task: task}) do
    %{data: task_json(task)}
  end

  defp task_json(task) do
    %{
      id: task.id,
      name: task.title,
      description: task.description,
      status: task.status,
      user_id: task.user_id,
    }
  end

end
