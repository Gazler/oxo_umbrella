defmodule OxoWeb.PageController do
  use OxoWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
