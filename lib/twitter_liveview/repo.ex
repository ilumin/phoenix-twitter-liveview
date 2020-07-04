defmodule TwitterLiveview.Repo do
  use Ecto.Repo,
    otp_app: :twitter_liveview,
    adapter: Ecto.Adapters.Postgres
end
