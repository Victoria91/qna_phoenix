defmodule QnaPhoenix.Answer do
  use QnaPhoenix.Web, :model

  schema "answers" do
    field :body, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body])
    |> validate_required([:body])
  end
end