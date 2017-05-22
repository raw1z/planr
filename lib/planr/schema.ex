defmodule Planr.Schema do
  use Absinthe.Schema

  alias Planr.{Repo, Domain}

  query do
    @desc "Get the domain list"
    field :domains, type: list_of(:domain) do
      resolve fn (_, _) ->
        domains = Repo.all(Domain)
        {:ok, domains}
      end
    end

    @desc "Get a domain by id"
    field :domain, type: :domain do
      arg :id, :id

      resolve fn (%{id: id}, _) ->
        case Repo.get(Domain, id) do
          %Domain{}=domain ->
            {:ok, domain}
          nil ->
            {}
        end
      end
    end
  end

  object :domain do
    field :id, :id
    field :name, :string
    field :tasks, list_of(:task)
  end

  object :task do
    field :id, :id
    field :comment, :string
    field :archived, :boolean
  end
end
