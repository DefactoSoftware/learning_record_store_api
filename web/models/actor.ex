defmodule LearningRecordStoreApi.Actor do
  use LearningRecordStoreApi.Web, :model

  @primary_key {:mbox, :string, autogenerate: false}
  schema "actors" do
    field :object_type, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:mbox, :object_type])
    |> validate_required([:mbox, :object_type])
  end
end
