defmodule App.Magic.Card do
  use Ecto.Schema
  import Ecto.Changeset


  schema "cards" do
    field :cost, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:name, :cost])
    |> validate_required([:name, :cost])
  end
end
