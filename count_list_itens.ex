defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([ head | tail ]), do: [ head * head | square(tail) ]

  def map([], func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]
end

# IO.puts MyList.len([1,2,3,4,5,6,7,8,9])
IO.puts MyList.square([1,2,3])
