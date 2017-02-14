defmodule LearningRecordStoreApi.VerbResolver do
  import Ecto.Query
  alias LearningRecordStoreApi.Verb
  alias LearningRecordStoreApi.Repo

  def find(%{id: id}, _info) do
    case Repo.get(Verb, id) do
      nil  -> {:error, "Verb id #{id} not found"}
      step -> {:ok, step}
    end
  end
end
