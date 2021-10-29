defmodule Exlivery do
  alias Exlivery.Users.Agent, as: UserAgent
  alias Exlivery.Users.CreatOrUpdate

  def start_agents do
    UserAgent.start_link(%{})
  end

  defdelegate creat_or_update_user(params), to: CreatOrUpdate, as: :call
end
