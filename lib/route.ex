defmodule Route do

  import Weber.Route
  require Weber.Route

  route on("GET", "/", :SpreeApi.Main, :index)
     |> on("GET", "/api/products", :SpreeApi.Products, :index)

end
