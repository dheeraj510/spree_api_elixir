defmodule SpreeApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :spree_api,
      version: "0.0.1",
      deps: deps(Mix.env)
    ]
  end

  def application do
    [
      applications: [],
      mod: {SpreeApi, []}
    ]
  end

  defp deps(:prod) do
    [
      { :weber, github: "0xAX/weber" },
      { :postgrex, github: "ericmj/postgrex" },
      { :ecto, github: "elixir-lang/ecto" }
    ]
  end

  defp deps(:test) do
    deps(:prod) ++ [{ :hackney, github: "benoitc/hackney" }]
  end

  defp deps(_) do
    deps(:prod)
  end
end
