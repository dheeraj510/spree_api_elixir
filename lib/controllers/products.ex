defmodule SpreeApi.Products do
  use Weber.Controller

  layout false

  def index([], _conn) do
    {:json, [response: "ok"], [{"HttpHeaderName", "HttpHeaderValheaderVal"}]}
  end
end