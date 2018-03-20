use Mix.Config

# Configure your database
config :bmg, Bmg.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bmg_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
