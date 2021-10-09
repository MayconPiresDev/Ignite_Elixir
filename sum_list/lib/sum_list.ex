defmodule SumList do
  def call(list), do: sum(list, 0)

  def call_enum(list), do: Enum.any?(list, fn elem -> elem > 5 end)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end

# teste de mesa
# [1,2,3], 0

# 1 ex: [1,2,3] hd: 1, tail: [2,3], 0 -> acc = 0 + 1, sum([2,3], 1)
# 2 ex: [2,3] hd: 2, tail: [3], 1, -> acc = 1 + 2, sum([3], 3)
# 3 ex: [3] hd: 3, tail: [], 3 -> acc = 3 + 3, sum([], 6)
# 4 ex: [] acc = 6
