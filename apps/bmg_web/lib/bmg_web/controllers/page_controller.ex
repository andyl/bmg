defmodule BmgWeb.PageController do
  use BmgWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
