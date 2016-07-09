defmodule OxoWeb.ChallengeController do
  use OxoWeb.Web, :controller

  alias Oxo.{Game, Challenge}

  def index(conn, _params) do
    challenges = Game.list_open_challenges(conn.assigns.current_user)
    render(conn, "index.html", challenges: challenges)
  end

  def create(conn, _params) do
    challenge = Game.issue_open_challenge(conn.assigns.current_user)
    redirect(conn, to: game_path(conn, :show, challenge))
  end
end
