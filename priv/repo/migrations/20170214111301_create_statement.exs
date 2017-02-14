defmodule LearningRecordStoreApi.Repo.Migrations.CreateStatement do
  use Ecto.Migration

  def change do
    create table(:statements) do
      add :verb_id, references(:verbs,
                               type: :string,
                               on_delete: :delete_all)
      add :object_id, references(:objects,
                                 type: :string,
                                 on_delete: :delete_all)
      add :actor_id, references(:actors,
                                column: :mbox,
                                type: :string,
                                on_delete: :delete_all)

      timestamps()
    end

    create index(:statements, [:verb_id])
    create index(:statements, [:object_id])
    create index(:statements, [:actor_id])
  end
end
