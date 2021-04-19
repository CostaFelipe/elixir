defmodule Usuario do
  defstruct nome: nil, email: nil
  def novo(nome, email) do
    %Usuario{nome: nome, email: email}
  end
end
