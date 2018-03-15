defmodule DepotTest do
  use ExUnit.Case
  doctest Depot

  test "greets the world" do
    assert Depot.hello() == :world
  end
end
