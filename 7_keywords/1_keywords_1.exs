## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# Keyword lists

## Basics
# List of Tuple pairs
# k = [{:a, 1}, {:b, 2}]
# k = [a: 1, b: 2]









# Inherit from lists
# keys must be :atoms, can be ordered, has duplicates
# [a: 1, b: 2] ++ [c: 3]
# [head | tail] = [a: 1, b: 2]










## Manipulating list
# Keyword.get([a: 1, b: 2], :b)
# [a: 1, b: 2][:b]









## Uses
# Rarely used for pattern matching, length, and items must match
# Used for passing options to functions
# cook = fn (heat, foods) -> Keyword.values(foods) |> Enum.map(&(heat <> &1)) end
# cook.("fried ", [meat: "sausage", veg: "beans"])





# cook.("fried ", meat: "ham", veg: "lettuce")
## option passing like "if"
# if false, do: :this, else: :that
# if(false, [do: :this, else: :that])





