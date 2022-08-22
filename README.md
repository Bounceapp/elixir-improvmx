# ImprovMX for Elixir [![Hex pm](https://img.shields.io/hexpm/v/improvmx.svg?style=flat)](https://hex.pm/packages/improvmx) [![hex.pm downloads](https://img.shields.io/hexpm/dt/improvmx.svg?style=flat)](https://hex.pm/packages/improvmx)

An Elixir wrapper for the ImprovMX API

# Installation

This package can be installed by adding `improvmx` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:improvmx, "~> 0.1.0"}
  ]
end
```

# Configuration

To make calls the API, it is necessary to configure your ImprovMX API key in your `config.exs` file:

```elixir
config :improvmx, api_key: System.get_env("IMPROVMX_API_KEY")
# OR
config :improvmx, api_key: "YOUR_KEY"
```

You can generate this key sat https://app.improvmx.com/api

# Documentation

The docs can be found at [https://hexdocs.pm/improvmx](https://hexdocs.pm/improvmx).

# License

More info at [LICENSE](LICENSE).
