defmodule ChallengeReportsGeneratorTest do
  use ExUnit.Case

  alias ChallengeReportsGenerator
  alias ChallengeReportsGenerator.Support.ReportFixture

  @file_name "gen_report.csv"

  describe "build/1" do
    test "When passing file name return a report" do
      response = ChallengeReportsGenerator.build(@file_name)

      assert response == ReportFixture.build()
    end

    test "When no filename was given, returns an error" do
      response = ChallengeReportsGenerator.build()

      assert response == {:error, "Insira o nome de um arquivo"}
    end
  end
end
