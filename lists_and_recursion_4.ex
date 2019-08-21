defmodule Recursion do
  def span(from, from, list), do: list

  def span(from, to, list = []), do: span(from, to, [to | list])

  def span(from, to, list) do
    span(from, to - 1, [to - 1 | list])
  end
end
