defmodule Fibonacci do
  def fib(1) do
    1
  end

  def fib(2) do
    1
  end

  def fib(n) do
    fib(n-1) + fib(n-2)
  end
end

