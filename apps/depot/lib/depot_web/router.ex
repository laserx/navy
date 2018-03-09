defmodule DepotWeb.Router do
  use DepotWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DepotWeb do
    pipe_through :api
  end
end
