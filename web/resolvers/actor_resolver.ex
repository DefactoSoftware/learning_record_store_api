defmodule LearningRecordStoreApi.ActorResolver do
  import Ecto.Query
  alias LearningRecordStoreApi.Actor
  alias LearningRecordStoreApi.Repo

  def find(%{mbox: mbox}, _info) do
    case Repo.get(Actor, mbox) do
      nil  -> {:error, "Actor id #{mbox} not found"}
      step -> {:ok, step}
    end
  end
end
