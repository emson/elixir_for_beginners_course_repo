# Keyword lists

* Two associative data structures, keyword lists and maps
* List of 2 item Tuples e.g. `[{:a, 1}, {:b, 2}]`
* Special syntax: e.g. `[a: 1, b: 2]`
* Inherit operations for List e.g. `[a: 1, b: 2] ++ [c: 3]`
* keys must be atoms, keys are ordered by developer, keys are not unique
* Use `Keyword` module to manipulate keyword lists e.g. `Keyword.get([a: 1, b:
  2])`
* Retreive using square bracket syntax `[a: 1, b: 2][:b]`
* Rarely pattern match with keyword lists because length and items must match
* keyword lists are used for passing options to functions
  - `if false, do: :this, else: :that`
  - `if(false, [do: :this, else: :that])`
* If the last argument in a function is a keyword list the `[]` can be dropped






