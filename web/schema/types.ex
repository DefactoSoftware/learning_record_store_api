defmodule LearningRecordStoreApi.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: LearningRecordStoreApi.Repo

  object :statement do
    field :id, :id
    field :actor, :actor, resolve: assoc(:actor)
    field :verb, :verb, resolve: assoc(:verb)
    field :object, :object, resolve: assoc(:object)
  end

  object :actor do
    field :mbox, :id
    field :object_type, :string
  end

  object :verb do
    field :id, :id
  end

  object :object do
    field :id, :id
  end
end
