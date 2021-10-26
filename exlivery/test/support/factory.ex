defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.{Item, Order}
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

  def order_factory do
    %Order{
      delivery_address: "Rua rua, 25",
      items: [
        build(:item),
        build(:item,
          description: "Temaki de atum",
          category: :japonese,
          quantity: 2,
          unity_price: Decimal.new("20.50")
        )
      ],
      total_price: Decimal.new("69.90"),
      user_cpf: "1234568900"
    }
  end
end
