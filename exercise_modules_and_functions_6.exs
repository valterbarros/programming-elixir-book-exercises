ExUnit.start()

defmodule ChopTest do
  use ExUnit.Case, async: true

  test "Should return guessed number" do
    teste = Chop.guess(273, 1..1000)
    assert teste == 273
  end

end

defmodule Chop do
  def guess(guess_number, base..top) do
    median = div(base + top, 2)
    guess(guess_number, base..top, median)
  end

  def guess(guess_number, base..top, median) when guess_number == median do
    guess_number
  end

  def guess(guess_number, base..top, median) when guess_number < median do
    IO.puts("it is #{median}")
    guess(guess_number, base..median)
  end

  def guess(guess_number, base..top, median) when guess_number > median do
    IO.puts("it is #{median}")
    guess(guess_number, median..top)
  end
end
