defmodule Liquid do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
    ]

    opts = [strategy: :one_for_one, name: Liquid.Supervisor]

    Supervisor.start_link(children, opts)
  end

  def read() do
    Depot.UserBuy
    |> Depot.Repo.all()
  end

  def map_reduce() do
    read()
    |> Flow.from_enumerable()
  end
end
