prefix = fn
  (name) -> fn
    (subname) -> "#{name} #{subname}"
  end
end

IO.puts prefix.("Elixir").("Rocks")