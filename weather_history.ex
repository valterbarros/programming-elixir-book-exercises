defmodule WeatherHistory do
  def for_location([], _), do: []

  def for_location([ head = [_, target_loc, _, _ ] | tail], target_loc) do
    [head | for_location(tail, target_loc) ]
  end

  def for_location([ _ | tail], target_loc), do: for_location(tail, target_loc)

  def test_data do
    [
      [1366225622,26,15,0.125],
      [1366225622,27,15,0.4564],
      [1366225622,28,210,0.656],
      [1366229222,26,19,0.5465],
      [1366229222,27,17,0.9987],
      [1366229222,28,15,0.532],
      [1366232822,26,22,0.2132],
      [1366232822,27,21,0.1245],
      [1366232822,28,14,0.777],
      [1366236422,26,17,0.2354],
    ]
  end
end
