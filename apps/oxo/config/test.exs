use Mix.Config

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :oxo, Oxo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "oxo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
