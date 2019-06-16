import Config

config :elixir_19_docker_release,
  cool_text: System.fetch_env!("COOL_TEXT")
