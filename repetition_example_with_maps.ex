defmodule Repetition do
  def make do
    data = %{ name: "Dave", state: "TX", likes: "Elixir"  }
		for key <- [ :name, :likes  ] do
			IO.puts key
			%{^key => value} = data
			value
		end
  end
end
