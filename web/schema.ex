defmodule LearningRecordStoreApi.Schema do
  use Absinthe.Schema

  alias LearningRecordStoreApi.StatementResolver
  alias LearningRecordStoreApi.ActorResolver
  alias LearningRecordStoreApi.ObjectResolver
  alias LearningRecordStoreApi.VerbResolver

  import_types LearningRecordStoreApi.Schema.Types

  query do
    field :statements, list_of(:statement) do
      resolve &StatementResolver.all/2
    end

    field :object, :object do
      arg :id, non_null(:string)

      resolve &ObjectResolver.find/2
    end
    field :actor, :actor do
      arg :mbox, non_null(:string)

      resolve &ActorResolver.find/2
    end
    field :verb, :verb do
      arg :id, non_null(:string)

      resolve &VerbResolver.find/2
    end
  end
end
