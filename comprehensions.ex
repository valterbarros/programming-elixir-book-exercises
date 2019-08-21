# For example, the code that follows uses a comprehension to list pairs of
# numbers from 1 to 8 whose product is a multiple of 10. It uses two generators
# (to cycle through the pairs of numbers) and two filters. The first filter allows
# only pairs in which the first number is at least the value of the second. The
# second filter checks to see if the product is a multiple of 10.

defmodule Comprehensions do
  def run do
    first8 = [ 1,2,3,4,5,6,7,8 ]

    # Two generators and two filters and 
    for x <- first8, y <- first8, x >= y, rem(x*y, 10)==0, do: { x, y }
  end
end
