defmodule ImprovMX.MixProject do
  use Mix.Project

  def project do
    [
      app: :improvmx,
      version: "0.1.1",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: "An elixir wrapper for the ImprovMX API",
      package: package(),
      deps: deps(),
      # Docs
      name: "ImprovMX",
      source_url: "https://github.com/Bounceapp/elixir-improvmx",
      homepage_url: "https://github.com/Bounceapp/elixir-improvmx",
      docs: [
        # The main page in the docs
        main: "ImprovMX",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.8 or ~> 2.0"},
      {:poison, "~> 4.0 or ~> 5.0 or ~> 6.0"},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Bounceapp/elixir-improvmx"}
    ]
  end

end
