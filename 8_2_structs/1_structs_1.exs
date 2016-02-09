## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# Maps

## Basics
# map = %{:a => 1, :b => 2}
# %{:a => 1, 8 => "eight", fn -> "boom" end => "boom"}

# %{:a => 1, :a => 2} # duplicate keys

# map[:b]
# map.b # only for atoms
# map.z # explicit

## Keyword list syntax
# map === %{a: 1, b:  2}









## Pattern matching
# %{} = %{a: 1, b: 2} # general map match
# %{b: 2} = %{a: 1, b: 2} # RHS will bind and match to LHS
# %{a: a, b: 2} = %{a: 1, b: 2, c: 3}
# %{c: 3} = %{a: 1, b: 2} # fails if key doesn't exist in RHS




## Map module
# Map.get(%{a: 1, b: 2, c: 3}, :b)
# Map.to_list(%{a: 1, b: 2, c: 3})














## Updating EXISTING elements
# map = %{a: 1, b: 2, c: 3}
# newmap = %{map | b: "sausage"}
# newmap = %{map | z: "sausage"} # explicit








