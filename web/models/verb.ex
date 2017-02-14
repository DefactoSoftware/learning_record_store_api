defmodule LearningRecordStoreApi.Verb do
  use LearningRecordStoreApi.Web, :model

  @primary_key {:id, :string, autogenerate: false}
  schema "verbs" do
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
