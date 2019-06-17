import Config

secret_key_base = System.fetch_env!("SECRET_KEY_BASE")
cool_text = System.fetch_env!("COOL_TEXT")
application_port =  System.fetch_env!("APP_PORT")

config :elixir_19_docker_release, Elixir19DockerReleaseWeb.Endpoint,
  http: [:inet6, port: String.to_integer(application_port)],
  secret_key_base: secret_key_base

config :elixir_19_docker_release,
  cool_text: cool_text
