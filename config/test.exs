use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ascension, Ascension.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ascension, Ascension.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ascension_web_test",
  hostname: System.get_env("ASCENSION_DB_HOST") || "192.168.99.100",
  port: System.get_env("ASCENSION_DB_PORT") || 32768,
  pool: Ecto.Adapters.SQL.Sandbox

config :ascension, :ascension_service, AscensionService.Mock