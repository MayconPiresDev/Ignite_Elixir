defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Maycon",
      email: "maycon@gmail.com",
      cpf: "1234568900",
      age: 21,
      address: "Rua rua, 25"
    }
  end
end
