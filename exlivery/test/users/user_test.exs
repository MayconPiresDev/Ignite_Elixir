defmodule Exlivery.Users.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "When all params are valid, returns the user" do
      response =
        User.build(
          "Rua rua, 25",
          "Maycon",
          "maycon@gmail.com",
          "1234568900",
          21
        )

      expected_response = {:ok, build(:user)}

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
