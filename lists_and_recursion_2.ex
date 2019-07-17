defmodule CalculationsRecursion do
  def do_max([], greater_item), do: greater_item

  def do_max([ head | tail ], greater_item) when head > greater_item do
    do_max(tail, head)
  end

  def do_max([ head | tail ], greater_item) do
    do_max(tail, greater_item)
  end
end
