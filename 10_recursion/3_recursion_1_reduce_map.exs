## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

## Recursion: Reduce & Map

## Reduce, takes mulitple values and
#  tries to reduce them down to 1 value
#  Sum a list of numbers:
# defmodule Recursion do
#   def sum([], acc), do: acc
#   def sum([head | tail], acc), do: sum(tail, acc + head)
# end
# IO.puts Recursion.sum([1,2,3], 0)






# sum([1,2,3], 0)  =>  0
# sum([  2,3], 1)  =>  0 + 1
# sum([    3], 3)  =>  0 + 1 + 2
# sum([     ], 6)  =>  0 + 1 + 2 + 3
# 6








## Map
#  Traverse a list applying a mapping
# defmodule Recursion do
#   def square([]), do: []
#   # not tail call optimized
#   def square([head | tail]), do: [head * head | square(tail)]
# end
# IO.inspect Recursion.square([1,2,3,4])






## Tail optimized map
# defmodule Recursion do
#   def square([], acc), do: acc
#   def square([head | tail], acc), do: square(tail, acc ++ [head * head])
# end
# IO.inspect Recursion.square([1,2,3,4], [])


# square(1 | [2,3,4], [] ++ [1])         => [2,3,4], [ ]        ++ [1 * 1]
# square(2 | [  3,4], [1] ++ [4])        => [  3,4], [1]        ++ [2 * 2]
# square(3 | [    4], [1,4] ++ [9])      => [    4], [1,4]      ++ [3 * 3]
# square(4 | [     ], [1,4,9] ++ [16])   => [     ], [1,4,9]    ++ [4 * 4]
# square(         [], [1,4,9,16] ++ [])  => [     ], [1,4,9,16] ++ []
# [1,4,9,16]


## Rarely use recursion for manipulating lists
#  use Enum instead:
# IO.puts Enum.reduce([1,2,3], 0, fn (x, acc) -> x + acc end)
# IO.inspect Enum.map([1,2,3,4], fn (x) -> x * x end)




