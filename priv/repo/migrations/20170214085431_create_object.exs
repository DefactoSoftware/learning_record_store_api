defmodule LearningRecordStoreApi.Repo.Migrations.CreateObject do
  use Ecto.Migration

  def change do
    create table(:objects, primary_key: false) do
      add :id, :string, primary_key: true

      timestamps()
    end

  end
end
