defmodule LearningRecordStoreApi.ObjectResolver do
  import Ecto.Query
  alias LearningRecordStoreApi.Object
  alias LearningRecordStoreApi.Repo

  def find(%{id: id}, _info) do
    case Repo.get(Object, id) do
      nil  -> {:error, "Object id #{id} not found"}
      step -> {:ok, step}
    end
  end
end
