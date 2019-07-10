defmodule Outer do
  defmodule Inner do
    def func(a,b) do
      "you input is: #{a} and #{b}"
    end
  end
end

defmodule OtherModule do
  alias Outer.Inner, as: Inner

  def other_func do
    Inner.func(1,2)
  end
end

IO.puts OtherModule.other_func()
