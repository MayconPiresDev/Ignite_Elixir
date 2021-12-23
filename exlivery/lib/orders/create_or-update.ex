defmodule Exlivery.Orders.CreatOrUpdate do
  alias Exlivery.Orders.Order, as: OrderAgent
  alias Exlivery.Users.Agent, as: UserAgent

  def call(%{user_cpf: user_cpf, items: items}) do
    with {:ok, user} <- UserAgent.get(user_cpf),
         {:ok, items} <- build_item(items),
         {:ok, order} <- Order.build(user, items) do
      OrderAgent.save(order)
    else
      error -> error
    end
  end
end
