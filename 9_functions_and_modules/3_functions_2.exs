## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

## Function Captures
#  notation for functions name/arity
#  e.g. hd/1
#  capture syntax can be used to create functions
#  using the capture operator `&`
# &is_nil/1 # elixir function
# &hd/1     # erlang function







## Anonymous Function Capture
#  at least one &1 capture argument
#   fn x -> x + 1 end  # explicit anonymous function
#   (  x -> x + 1   )  # remove do/end, and add brackets
#  &(       x + 1   )  # remove body and add capture operator
#  &(      &1 + 1   )  # replace x with capture arguments
# increment = &(&1+1)
# increment.(7)


## Return Complex Data Structures
# list = &[&1, &2]

## Referencing Module Functions
# &[module.]name/arity
# &String.upcase/1
# &String.upcase(&1)

