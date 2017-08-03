defmodule QnaPhoenix.QuestionController do
  use QnaPhoenix.Web, :controller
  alias QnaPhoenix.Question

  def new(conn, _) do
    changeset = Question.changeset(%Question{})
    render conn, "new.html", changeset: changeset
  end
end