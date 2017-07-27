defmodule QnaPhoenix.Question do
  use QnaPhoenix.Web, :model

  schema "questions" do
    field :title, :string
    field :body, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
    |> validate_length(:title, min: 10)
  end
end
