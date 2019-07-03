# Exercise: Functions-2
# Write a function that takes three arguments. If the first two are zero,
# return “FizzBuzz.” If the first is zero, return “Fizz.” If the second is zero,
# return “Buzz.” Otherwise return the third argument. Do not use any lan-
# guage features that we haven’t yet covered in this book.

func = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

IO.puts func.(0,0,3)
IO.puts func.(0,1,3)
IO.puts func.(1,0,3)
IO.puts func.(1,1,3)


# Exercise: Functions-3
# The operator rem(a, b) returns the remainder after dividing a by b . Write a
# function that takes a single integer ( n ) and calls the function in the previ-
# ous exercise, passing it rem(n,3) , rem(n,5) , and n . Call it seven times with
# the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13,
# 14, FizzBuzz, 16.”

func2 = fn
  (n) -> func.(rem(n, 3), rem(n, 5), n)
end

IO.puts func2.(10)
IO.puts func2.(11)
IO.puts func2.(12)
IO.puts func2.(13)
IO.puts func2.(14)
IO.puts func2.(15)
IO.puts func2.(16)