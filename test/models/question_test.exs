defmodule QnaPhoenix.QuestionTest do
  use QnaPhoenix.ModelCase

  alias QnaPhoenix.Question

  @valid_attrs %{title: "some weird title", body: "body"}
  @invalid_attrs %{}


  test "changeset with valid attributes" do
    changeset = Question.changeset(%Question{}, @valid_attrs)
    assert changeset.valid?
  end

  test "validates title" do
    changeset = Question.changeset(%Question{}, @invalid_attrs)
    assert changeset.errors[:title] == {"can't be blank", [validation: :required]}
  end

  test "validates body" do
    changeset = Question.changeset(%Question{}, @invalid_attrs)
    assert changeset.errors[:body] == {"can't be blank", [validation: :required]}
  end

  test "validate title length" do
    changeset = Question.changeset(%Question{}, %{title: "11212"})
    assert changeset.errors[:title] == {"should be at least %{count} character(s)", [count: 10, validation: :length, min: 10]}
  end
end
