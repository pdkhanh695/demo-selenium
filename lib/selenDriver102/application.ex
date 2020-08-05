defmodule SelenDriver102.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      SelenDriver102.Repo,
      # Start the Telemetry supervisor
      SelenDriver102Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: SelenDriver102.PubSub},
      # Start the Endpoint (http/https)
      SelenDriver102Web.Endpoint
      # Start a worker by calling: SelenDriver102.Worker.start_link(arg)
      # {SelenDriver102.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SelenDriver102.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SelenDriver102Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
