defmodule Planr.Repo.Migrations.CreateDomain do
  use Ecto.Migration

  def change do
    create table(:domains) do
      add :name, :string
      add :tasks, {:array, :map}

      timestamps()
    end
  end
end
