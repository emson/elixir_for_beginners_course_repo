# Maps

* Efficient key/value pair lookup
* Anything can be a key even a function
* Order is not important, tend to keep keys the same type
* Retrieve with `map[key]`, but prefer explicit `map.key`
* Duplicate keys, the last will override `{:a => 1, :a => 2}`
* When keys are atoms can use the Keyword list syntax
* Maps are very good for pattern matching, empty map on LHS binds to RHS
* Map module similar to the Keyword module, inherits from Dict
* Updating use the `|` operator which is explicit


