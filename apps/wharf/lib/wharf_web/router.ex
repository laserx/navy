defmodule WharfWeb.Router do
  use WharfWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WharfWeb do
    pipe_through :api
  end
end
