defmodule Planr.Task do
  use Planr.Web, :model

  embedded_schema do
    field :comment, :string
    field :archived, :boolean, default: false

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:comment, :archived])
    |> validate_required([:comment])
  end
end
