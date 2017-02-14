# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LearningRecordStoreApi.Repo.insert!(%LearningRecordStoreApi.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

actors = Enum.map(
  1..30,
  fn n ->
    LearningRecordStoreApi.Repo.insert!(
      %LearningRecordStoreApi.Actor{mbox: "john_#{n}@doe.com"}
    )
  end
)

verbs = [
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Verb{id: "https://w3id.org/xapi/adl/verbs/abandoned"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Verb{id: "https://w3id.org/xapi/adl/verbs/attempted"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Verb{id: "https://w3id.org/xapi/adl/verbs/completed"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Verb{id: "https://w3id.org/xapi/adl/verbs/visited"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Verb{id: "https://w3id.org/xapi/adl/verbs/showed"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Verb{id: "https://w3id.org/xapi/adl/verbs/licked"}
  ),
]

objects = [
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Object{id: "http://google.com"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Object{id: "http://facebook.com"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Object{id: "http://twitter.com"}
  ),
  LearningRecordStoreApi.Repo.insert!(
    %LearningRecordStoreApi.Object{id: "http://msn.com"}
  ),
]

Enum.map(
  1..100,
  fn _ ->
    actor = Enum.at(actors, :rand.uniform(Enum.count(actors) - 1))
    verb = Enum.at(verbs, :rand.uniform(Enum.count(verbs) - 1))
    object = Enum.at(objects, :rand.uniform(Enum.count(objects) - 1))

    LearningRecordStoreApi.Repo.insert!(
      %LearningRecordStoreApi.Statement{
        actor: actor,
        verb: verb,
        object: object
      }
    )
  end
)
