defmodule ReactWebpack.PageController do
  use ReactWebpack.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
