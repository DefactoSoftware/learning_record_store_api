defmodule LearningRecordStoreApi.Repo.Migrations.CreateVerb do
  use Ecto.Migration

  def change do
    create table(:verbs, primary_key: false) do
      add :id, :string, primary_key: true

      timestamps()
    end

  end
end
