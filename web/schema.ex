defmodule LearningRecordStoreApi.Schema do
  use Absinthe.Schema

  alias LearningRecordStoreApi.StatementResolver

  import_types LearningRecordStoreApi.Schema.Types

  query do
    field :statements, list_of(:statement) do
      resolve &StatementResolver.all/2
    end
  end
end
