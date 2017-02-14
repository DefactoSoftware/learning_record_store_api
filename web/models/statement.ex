defmodule LearningRecordStoreApi.Statement do
  use LearningRecordStoreApi.Web, :model

  schema "statements" do
    belongs_to :verb, LearningRecordStoreApi.Verb, references: :id, type: :string
    belongs_to :object, LearningRecordStoreApi.Object, references: :id, type: :string
    belongs_to :actor, LearningRecordStoreApi.Actor, references: :mbox, type: :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
