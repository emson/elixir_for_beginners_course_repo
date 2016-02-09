## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# Pattern Matching Advanced

## Tuples
# Destructuring more complex datatypes
# {1, 2} = {1, 2}
# {a, b} = {1, "two", :three} # won't match different size
# {a, b, c} = {1, "two", :three}
# b
# {a, a, c} = {1, "two", :three} # binding once per match











# Match with return types
#  Using specific values
# Tuples as a return type
# {:ok, my_file} = {:ok, "some_file.txt"}
# {:ok, file} = File.open "README.md"
# IO.read file, :line
# File.close file












## Lists
# {1, 2} != [1, 2]       # Can't match different types
# [a, b] = [1, 2]
# [1, 2, _] == [1, 2, 3] # Can ignore values, _ read only variable





## Lists head | tail
# list = [:head, "tail"]
# [head | tail] = list
# hd(list) = head
# ** (CompileError) iex:3: illegal pattern
# head = hd(list)
# Can also be used for prepending to a list
# [0 | list]

