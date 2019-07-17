defmodule ListsRecursion do
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def sum_number(acc) when acc > 10 do
    acc
  end

  def sum_number(acc) do
    IO.puts(acc)
    sum_number(acc + 1)
  end
end

# IO.puts ListsRecursion.sum_a(0, [1,2,3,4,5])
