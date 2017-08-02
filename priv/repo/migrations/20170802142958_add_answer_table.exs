defmodule QnaPhoenix.Repo.Migrations.AddAnswerTable do
  use Ecto.Migration

  def change do
    create table(:answers) do
      add :body, :string
      add :question_id, references(:questions)

      timestamps()
    end
  end
end
