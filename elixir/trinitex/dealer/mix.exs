defmodule Dealer.MixProject do
  use Mix.Project

  def project do
    [
      app:                  :dealer,
      version:              "0.1.0",
      elixir:               "~> 1.8",
      start_permanent:      Mix.env() == :prod,
      deps:                 deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Dealer.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:grpc,                 github: "elixir-grpc/grpc"},
      {:bisnex,               path: "../bisnex"},
      {:poison,               "~> 3.1"}
    ]
  end
end
