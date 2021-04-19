defmodule Usuario do
  defstruct nome: nil, email: nil
  def novo(nome, email) do
    %{nome: nome, email: email}
  end
end
