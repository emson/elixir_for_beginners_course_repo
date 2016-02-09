# 2 Basic Types

## Integers

* Unlimited in size

## Float

* Must have a number either side of the decimal point
* Exponents are expressed as `e` with a positive/negative number appended
* 64 bit double precision

## Boolean

* `true == true`
* Predicate functions to check the type of a value `is_boolean/1`

## Atoms

* Constants where there name is their own value
* Similar to Ruby symbol
* Booleans are just Atoms `true === :true`

## Strings

* Strings are defined between double quotes `"my string"`
* They are encoded in UTF-8
* Support interpolation `"Hello #{42}"`
* Strings can have line breaks `\n` e.g. "Greetings\nSnoopy"`
* Strings are just sequences of binaries, a sequence of bytes `is_binary("Sausage")`

## Anonymous Functions

* Defined and bound to a variable as `add = fn (p1, p2) -> p1 + p2 end`
* Invoked with a `.()` e.g. `add.(1, 2)` brackets are required
* Functions are a type `is_function(add)`

## Tuples

* A Tuple is an indexed array of elements
* Like an array in Ruby, except it is immutable
* Access an element or getting the Tuple **size** is a fast operation
* Updating or adding elements is expensive, as the whole Tuple is copied in
  memory
* Use Tuples to return extra information from the function

## Lists

* Lists are Linked Lists
* Defined with `[]` and can hold any type `[1, "two", :three]`
* A list consists of a head and a tail, head is the first element, tail is the
  rest of the list
* Head and tail are important concepts `hd([2,3,4]) # 2` and tail `tl([2,3,4]) # [3,4]`
* A list of integers sometimes returns a value in single quotes `[97,98,99]
  # 'abc'`
* Character lists of ASCII characters are stored as integer lists
* Hence `"hello" != 'hello'`
* Expensive to calculate `length`
* **cons cell** value and pointer to the next cell
* Prepend is fast `[0| [1,2,3]]`



