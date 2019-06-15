defmodule Elixir19DockerReleaseWeb.Router do
  use Elixir19DockerReleaseWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Elixir19DockerReleaseWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Elixir19DockerReleaseWeb do
  #   pipe_through :api
  # end
end
