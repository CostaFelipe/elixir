defmodule Conta do
  defstruct usuario: Usuario, saldo: nil
 def cadastrar(usuario), do: %__MODULE__{usuario: usuario, saldo: 1000}
end
