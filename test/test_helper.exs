Application.ensure_all_started(:hound)
ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(SelenDriver102.Repo, :manual)
