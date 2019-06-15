defmodule Elixir19DockerReleaseWeb.PageController do
  use Elixir19DockerReleaseWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
