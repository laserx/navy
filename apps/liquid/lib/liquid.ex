defmodule Liquid do
  def read() do
    Depot.UserBuy
    |> Depot.Repo.all()
  end

  def map_reduce() do
    read()
    |> Flow.from_enumerable()
  end
end
