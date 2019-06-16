import Config

secret_key_base =
  System.fetch_env!("SECRET_KEY_BASE") ||
    raise """
    environment variable SECRET_KEY_BASE is missing.
    You can generate one by calling: mix phx.gen.secret
    """

cool_text =
  System.fetch_env!("COOL_TEXT") ||
    raise """
    environment variable COOL_TEXT is missing.
    You can't have a release without cool text!
    """

application_port =
  System.fetch_env!("APP_PORT") ||
    raise """
    environment variable APP_PORT is missing.
    You need to specify what port the application runs on.
    """

config :elixir_19_docker_release, Elixir19DockerReleaseWeb.Endpoint,
  http: [:inet6, port: String.to_integer(application_port)],
  secret_key_base: secret_key_base

config :elixir_19_docker_release,
  cool_text: cool_text
