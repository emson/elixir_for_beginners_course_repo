## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

## Recursion

# Tail-call optimization
# If the very last thing a function does is call itself,
# there is no need to make the call.The runtime can jump
# (like GOTO) back to the start of the function.
#
## The recursive call MUST be the last function executed
# defmodule Recursion do
#   def ten_times(0), do: 0
#   def ten_times(n) do
#     # not tail optimized
#     10 + ten_times(n - 1)
#   end
# end
# IO.puts Recursion.ten_times(3)

# The stack would look like this:
# ten_times(3)
# 10 + ten_times(3 - 1)
# 10 + ten_times( 10 + ten_times(2 - 1) )
# 10 + ten_times( 10 + ten_times( 10 + ten_times( ten_times(0) ) ) )
# 10 + ( 10 + ( 10 + (0) ) )
# 10 + ( (20) )
# 30






## Using tail call optimization
# simply ensure that the last call
# in the function is the function.
# However you may need to accumulate the result
# defmodule Recursion do
#   def ten_times(n), do: ten_times(n, 0)
#   def ten_times(0, acc), do: acc
#   def ten_times(n, acc) do
#     # tail optimized
#     ten_times(n - 1, acc + 10)
#   end
# end
# IO.puts Recursion.ten_times(3)



# The stack would look like this:
# ten_times(3, 0)
# ten_times(2, 10)
# ten_times(1, 20)
# ten_times(0, 30)
# 30





