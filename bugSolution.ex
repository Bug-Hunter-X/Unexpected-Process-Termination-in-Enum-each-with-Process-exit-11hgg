```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, {:cont, []}, fn x, acc ->
  if x == 3 do
    {:halt, acc}
  else
    {:cont, [{:ok, x} | acc]}
  end
end)

case result do
  {:halt, acc} -> IO.puts("Stopped at 3. Result: #{Enum.reverse(acc)}")
  {:cont, acc} -> IO.puts("Completed. Result: #{Enum.reverse(acc)}")
end
```