defmodule Account do
  alias Oxo.{User, Repo}

  def register_user(params) do
    %User{}
    |> User.changeset(params)
    |> Repo.insert()
  end

  def get_user(id) do
    Repo.get!(User, id)
  end
end
