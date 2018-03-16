# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :depot, Depot.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "navy",
  username: "root",
  password: "navynavy",
  hostname: "127.0.0.1",
  port: 3330

config :depot,
  ecto_repos: [Depot.Repo]
