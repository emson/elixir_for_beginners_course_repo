## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# Hello World example
# ("#" are comments in elixir)
#
# Call the "puts" function on
# the IO module
#   Execute with:
#     elixir hello_world.exs
#   or
#     iex>  c "hello_world.exs"
IO.puts("Hello World!")

# The number of parameters in a function is called the "arity"
# and elixir expresses this as a "/1" where there is 1 parameter.
# Therefore our "puts" function is expressed as "IO.puts/1"

# Also brackets are not generally required.
IO.puts "New World!"

# To output different types use the "inspect" function
# Here we output a Tuple of Strings.
IO.inspect {"Brave", "New", "World!"}
