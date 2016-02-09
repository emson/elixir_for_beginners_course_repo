# Immutable data

* Build a system that massively scales, helps if the data doesn't change
* Immutable means "cannot change over time"
* Problems with stored state and changing data in multithreaded environments - race conditions
* gives you confidence, that the application state will not change in unexpected ways
* Use functions to transform data - must reassign to variables
* Performance, grind to a holt clearing up old values and data?
    - Elixir knows data won't change so cleverly uses pointers  to build new data structures e.g. lists
    - complex garbage collection, code runs in small processes , radically improves garbage collection
