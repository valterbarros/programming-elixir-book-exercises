# digit - ?0 is to know the value of number because when make [digit|tail] = '1,2,3' digit return integer that represent 1
#
# Example:
#
# iex(8)> 234
# 234
# iex(10)> 0 * 10 + ?2 - ?0
# 2
# iex(11)> 2 * 10 + ?3 - ?0
# 23
# iex(12)> 23 * 10 + ?4 - ?0
# 234
# iex(13)> 

defmodule Parse do
  def number([ ?- | tail ]), do: _number_digits(tail, 0) * -1
  def number([ ?+ | tail ]), do: _number_digits(tail, 0)
  def number(str), do: _number_digits(str, 0)
  defp _number_digits([], value), do: value
  defp _number_digits([ digit | tail ], value)
  when digit in '0123456789' do
    IO.puts(digit)
    _number_digits(tail, value * 10 + digit - ?0)
  end
  defp _number_digits([ non_digit | _ ], _) do
    raise "Invalid digit '#{[non_digit]}'"
  end
end
