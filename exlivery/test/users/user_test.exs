defmodule Exlivery.Users.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  describe "build/5" do
    test "When all params are valid, returns the user" do
      response =
        User.build(
          "Rua rua",
          "Maycon",
          "maycon@abacate.com",
          "123456",
          20
        )

      expected_response =
        {:ok,
         %User{
           address: "Rua rua",
           age: 20,
           cpf: "123456",
           email: "maycon@abacate.com",
           name: "Maycon"
         }}

      assert response == expected_response
    end

    test "When there are invalid params, returns an error" do
      response =
        User.build(
          "Rua rua",
          "Vitor",
          "vitor@abacate.com",
          "654321",
          12
        )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
