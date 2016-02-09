## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

## Recursion
#  Loops
#  Ruby example: traditional loops mutate
#    the array and variable i
# for i in [1,2,3] do
#   puts i
# end














# Functional languages use
# recursion until a condition is met
defmodule Recursion do
  def countdown(0), do: IO.puts "Blast off!"
  def countdown(n) do
    IO.puts n
    countdown(n - 1)
  end
end
Recursion.countdown(5)














# Pattern matching, guards and multiple
# clauses all aid recursion
# - order is important
# defmodule Recursion do
#   def countdown(0), do: IO.puts "Blast off!"
#   def countdown(n) when n == 2 do
#     IO.puts "#{n}...ignite engines..."
#     countdown(n - 1)
#   end
#   def countdown(n) when is_integer n do
#     IO.puts n
#     countdown(n - 1)
#   end
#   # is_binary needs brackets
#   def countdown(str) when is_binary(str), do: IO.puts "C'mon...countdown is a number!"
# end
# Recursion.countdown(5)
# Recursion.countdown("ten")


