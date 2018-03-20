use Mix.Config

config :bmg, ecto_repos: [Bmg.Repo]

import_config "#{Mix.env}.exs"
