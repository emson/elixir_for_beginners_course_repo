# Pattern Matching Outline

## Basic Pattern Matching


* Functional languages use pattern matching, think of it like an assertion
* Traditionally `=` is an assignment operator. In Elixir `=` is a match
  operator.
* Joe Armstrong likens it to the `=` in algebra, equations are actually doing
  pattern matching ` x = 1 + y`
* Elixir tries to match the LHS to the RHS of the `=`
* If the LHS is a variable then the RHS is "bound" to that variable
* To match a LHS variable instead of bind use the pin operator `^`
* Erlang can't be "rebound" once a variable has been set
* OO languages use `if/else` conditionals to govern logic flow in a program


## Advanced Pattern Matching

* Pattern matching works with complex data structures like Lists, Tuples, etc.
* Patterns on the LHS will match and bind to the RHS, same size, data types, etc
* Destructuring more complex data types
* Matches the data structure then the elements, and binds when applicable
* Tuples used as return types for matching
* Lists can be pattern matched
* Wildcard matching with `_` a special variable that can never be read from
* Binding occurs once per pattern match `{x, x} = {1, 2}`
* Lists consist of `head | tail` we can pattern match against this to
* `|` operator can be used for prepending to a list
* Functions cannot match if on the LHS




