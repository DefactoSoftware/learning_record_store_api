defmodule LearningRecordStoreApi.StatementResolver do
  import Ecto.Query
  alias LearningRecordStoreApi.Statement
  alias LearningRecordStoreApi.Repo

  def find(%{id: id}, _info) do
    case Repo.get(Statement, id) do
      nil  -> {:error, "Statement id #{id} not found"}
      step -> {:ok, step}
    end
  end

  def all(_args, _info) do
    {:ok, Repo.all(Statement)}
  end

end
