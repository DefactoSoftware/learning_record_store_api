defmodule LearningRecordStoreApi.Repo.Migrations.CreateActor do
  use Ecto.Migration

  def change do
    create table(:actors, primary_key: false) do
      add :mbox, :string, primary_key: true
      add :object_type, :string

      timestamps()
    end

  end
end
