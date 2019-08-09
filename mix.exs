defmodule PI.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :pi,
      version: "0.8.0",
      elixir: "~> 1.7",
      description: "PI Process Instance",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :pi,
      links: %{"GitHub" => "https://github.com/synrc/pi"}
    ]
  end

  def application() do
    [mod: {:pi, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
