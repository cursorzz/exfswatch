defmodule ExFSWatch.Mixfile do
  use Mix.Project

  def project do
    [ app: :exfswatch,
      version: "0.3.0",
      elixir: "~> 1.0",
      deps: deps(),
      description: "A file change watcher wrapper based on [fs](https://github.com/synrc/fs)",
      source_url: "https://github.com/falood/exfswatch",
      package: package(),
      docs: [
        extras: ["README.md"],
        main: "readme",
      ]
    ]
  end

  def application do
    [ mod: { ExFSWatch, [] },
      applications: [:logger]
    ]
  end

  defp deps do
    [ { :fs,     "~> 2.12" },
      { :ex_doc, "~> 0.14", only: :docs },
    ]
  end

  defp package do
    %{ maintainers: ["Xiangrong Hao"],
       licenses: ["WTFPL"],
       links: %{"Github" => "https://github.com/falood/exfswatch"}
     }
  end
end
