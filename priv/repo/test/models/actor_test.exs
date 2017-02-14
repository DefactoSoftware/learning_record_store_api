defmodule LearningRecordStoreApi.ActorTest do
  use LearningRecordStoreApi.ModelCase

  alias LearningRecordStoreApi.Actor

  @valid_attrs %{mbox: "some content", object_type: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Actor.changeset(%Actor{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Actor.changeset(%Actor{}, @invalid_attrs)
    refute changeset.valid?
  end
end
