## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# Pattern Matching Basic


# Elixir tries to match LHS = RHS
# If LHS is a variable then binding occurs
# Don't think  "assignment"
# a = 8



# Elixir can match the LHS variable with the pin operator
# a = 42
# ^a = 24



# Match operator is similar to algebra "="
# Given one variable we can determine the other
# x = 3
# y = 2
# x = 1 + y



# Erlang can only bind once to a variable
# erl> A = 1.
# erl> 1 = A.
# erl> A = 8.



# OO languages like Ruby
# you might have conditional
# logic



# Elixir would be functional
# card = 88
# bingo = fn
#   (88) -> "Bingo!"
#   (_)  -> "no win"
# end
# IO.puts bingo.(card)


# matching function arguments
# card = 88
# win88 = fn (88) -> "Bingo!" end
# nowin = fn (_)  -> "no win" end
# win88.(card)
# nowin.(card)

