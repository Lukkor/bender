use Mix.Config

config :bender, Bender.Robot,
  adapter: Hedwig.Adapters.Slack,
  name: "bender",
  aka: "/",
  token: System.get_env("SLACK_API_TOKEN"),
  rooms: ["bender"],
  responders: [
    { Bender.Responders.Hello, [] },
    { Hedwig.Responders.Help, [] },
    { Hedwig.Responders.GreatSuccess, [] },
    { Hedwig.Responders.ShipIt, [] }
  ]
