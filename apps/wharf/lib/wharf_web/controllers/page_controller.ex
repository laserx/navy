defmodule WharfWeb.PageController do
  use WharfWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
