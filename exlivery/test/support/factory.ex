defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.Item
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

  def item_factory do
    %Item{
      description: "Pizza de peperone",
      category: :pizza,
      quantity: 1,
      unity_price: Decimal.new("28.90")
    }
  end
end
