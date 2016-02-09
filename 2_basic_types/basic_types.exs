## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# 2 Basic Types

# Integer
1_000_000
0o444 # octal 292
0xabc # hexadecimal 2748
0b1011 # binary 11

# Float
3.14159
314159.0e-5

# Atom
:an_atom
:"Another Atom"
:one === :"one"

# Boolean
true == false
true === :true
is_boolean(true)


# Strings
"Hello"
name = "World!"
"Hello #{name}"
is_binary "Sausage"
String.upcase "elixir"

# Anonymous functions
add = fn (a, b) -> a + b end
add.(1, 2) # outputs 3
is_function(add)
is_function(add, 2) # our function has an arity of 2 parameters
(fn (word) -> word end).("Whoop")

# Lists
list = [1, "two", :three]
hd(list)
tl(list)
IO.inspect [97,98,99]
"hello" != 'hello'
length(list) # expensive


# Tuple
t = {1, "two", :three}
elem(t, 1) # "two"
tuple_size(t)
put_elem(t, 1, :boom)


