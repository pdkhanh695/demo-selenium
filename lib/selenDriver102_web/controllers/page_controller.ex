defmodule SelenDriver102Web.PageController do
  use SelenDriver102Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
