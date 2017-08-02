defmodule QnaPhoenix.AnswerTest do
  use QnaPhoenix.ModelCase

  alias QnaPhoenix.Answer

  test "requires body" do
    changeset = Answer.changeset(%Answer{}, %{})
    assert changeset.errors[:body] == {"can't be blank", [validation: :required]}
  end
end