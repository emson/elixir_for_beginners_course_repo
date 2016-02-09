## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# Modules

## Modules group functions
# h String.

## Defined with defmodule macro
# defmodule Greet do
# end









## Modules can be nested

# Modules can be nested
# defmodule Welcome do
#   defmodule Greet do
#   end
# end








# defmodule Welcome.Greet do
# end
# IO.puts Welcome.Greet








## One module per file, file has module name
## Files can be compiled or run in memory
## Compile with elixirc my_module or iex> c "./my_module"

# defmodule Greet do
#   def hello do
#     "hello"
#   end
# end


## iex will automatically load *.beam files in current directory
## Script files don't create byte code / beam files
## designed to run in memory - ideal for test scripts etc.


