defmodule Playground do
  def guess(actual, a..b) do
    do_guess(actual, a..b, div(b, 2))
  end

  def do_guess(actual, a.._b, number) when actual < number do
    print_number(number)
    do_guess(actual, a..number, div(a + number, 2))
  end

  def do_guess(actual, _a..b, number) when actual > number do
    print_number(number)
    do_guess(actual, number..b, div(number + b, 2))
  end

  def do_guess(number, _, number) do
    print_number(number)
    IO.puts("#{number}")
  end

  def print_number(number), do: IO.puts("Is it #{number}")
end
