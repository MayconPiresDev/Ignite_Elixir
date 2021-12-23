defmodule Exlivery do
  alias Exlivery.Orders.Agent, as: OrderAgent
  alias Exlivery.Users.CreatOrUpdate, as: CreatOrUpdateUser
  alias Exlivery.Users.Agent, as: UserAgent
  alias Exlivery.Orders.CreatOrUpdate, as: CreatOrUpdateOrders

  def start_agents do
    UserAgent.start_link(%{})
    OrderAgent.start_link(%{})
  end

  defdelegate creat_or_update_user(params), to: CreatOrUpdateUser, as: :call
  defdelegate creat_or_update_order(params), to: CreatOrUpdateOrders, as: :call
end
