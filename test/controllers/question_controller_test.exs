defmodule QnaPhoenix.QuestionControllerTest do
  use QnaPhoenix.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/new"
    assert html_response(conn, 200) =~ question_path(conn, :create)
  end
end
