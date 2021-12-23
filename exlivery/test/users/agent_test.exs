defmodule Exlivery.Users.AgentTest do
  use ExUnit.Case

  alias Exlivery.Users.Agent, as: UserAgent

  import Exlivery.Factory

  describe "save/1" do
    test "saves the user" do
      user = build(:user)

      UserAgent.start_link(%{})

      assert UserAgent.save(user) == :ok
    end
  end

  describe "get/1" do
    test "when the user is found, returns the user" do
      UserAgent.start_link(%{})

      :user
      |> build(cpf: "78945612300")
      |> UserAgent.save()

      response = UserAgent.get("78945612300")

      expected_response = "abacate"

      assert response == expected_response
    end

    test "when the user is not found, returns an error" do
    end
  end
end
