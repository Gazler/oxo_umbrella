defmodule OxoWeb.GameController do
  use OxoWeb.Web, :controller

  alias Oxo.Game

  def show(conn, %{"id" => id}) do
    case Game.close_challenge(id, conn.assigns.current_user) do
      {:ok, challenge} ->
        user_token = Phoenix.Token.sign(conn, "user", conn.assigns.current_user.id)
        render(conn, "show.html", game_id: id, user_token: user_token)
      _ ->
        conn
        |> put_flash(:error, "Could not find challenge")
        |> redirect(to: challenge_path(conn, :index))
    end
  end
end
