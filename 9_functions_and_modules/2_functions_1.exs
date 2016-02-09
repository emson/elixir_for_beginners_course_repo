## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

## Named Functions
# * they must be created in a module
# defmodule Cook do
#   # multiline function
#   def boil(food) do
#     f = "Boil #{food}"
#     String.upcase(f)
#   end
#   # singleline function
#   def sausage, do: boil("sausage")
# end
# IO.inspect Cook.boil("steak")
# IO.inspect Cook.sausage








## Functions can be public or private
# defmodule Cook do
#   # public function
#   def cook(meat, veg), do: _cook("Grill", meat) <> _cook("boil", veg)
#   # private function
#   defp _cook(cook, food) do
#     "#{cook} #{food} "
#   end
# end
# IO.inspect Cook.cook "pasta", "bacon"
# IO.inspect Cook._cook "pasta", "bacon"










## Pattern matching allows functions
#  to have multiple clauses
# defmodule Cook do
#   def cook,             do: cook("fry", "sausage")
#   def cook(0),          do: cook("bake", "banana")
#   def cook(meat),       do: cook("grill", meat)
#   def cook(type, food), do: "#{type} #{food}"
# end
# IO.inspect Cook.cook








# ## Guard clauses
# #  guards are a limited subset of elixir
# #  expressions e.g. is_xxx, ==, etc.
# defmodule Cook do
#   def cook(food) when food == 0 do
#     "Nothing cooking"
#   end
#   def cook(food) when is_integer(food), do: "food is a number #{food}?"
#   def cook(food) when is_atom(food),    do: "food is atomic!"
#   def cook(food) when is_binary(food),  do: cook("boil", food)
#   def cook(type, food), do: "#{type} #{food}"
# end
# IO.inspect Cook.cook(0)







## Functions can have default arguments
# defmodule Cook do
#   def cook(type \\"grill", food), do: "#{type} #{food}"
# end
# IO.inspect Cook.cook("cake")








## Default arguments with muliple clauses need
#  a function head (blank function)
# defmodule Cook do
#   def cook(food, type \\"boiled", veg \\"beans")
#   def cook(food, type, veg), do: "Tasty #{food} with #{type} #{veg}"
# end
# IO.inspect Cook.cook "brussels sprouts", "fried", "pineapple"










## Compiler warns of overlapping functions
# defmodule Cook do
#   def cook(food, type \\"boiled", veg \\"beans")
#   def cook(food, type), do: "overlapping function"
#   def cook(food, type, veg), do: "Grilled #{food} with #{type} #{veg}"
# end










## Piping functions similar to unix pipe
#  uses the `|>` operator

# String.reverse(String.upcase("trebor"))

# String.upcase("trebor") |> String.reverse

# IO.puts "trebor"
#   |> String.upcase
#   |> String.reverse

