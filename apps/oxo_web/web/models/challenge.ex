defmodule OxoWeb.Challenge do
  use OxoWeb.Web, :model

  schema "challenge" do
    field :open, :boolean, default: true
    belongs_to :user, OxoWeb.User
    belongs_to :challenger, OxoWeb.User

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:open])
    |> validate_required([:open])
  end
end
