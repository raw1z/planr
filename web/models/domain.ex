defmodule Planr.Domain do
  use Planr.Web, :model

  schema "domains" do
    field :name, :string
    embeds_many :tasks, Planr.Task

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
    |> cast_embed(:tasks)
  end
end
