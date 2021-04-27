defmodule Conta do
  defstruct usuario: Usuario, saldo: 1000
 def cadastrar(usuario), do: %__MODULE__{usuario: usuario}
 def transferir(contas, de, para, valor) do

 end
end
