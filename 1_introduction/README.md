# 1 Introduction

## Hello World

### IEX Hello World

* `iex` is elixir's interactive REPL (Read, Evaluate, Print, Loop)
    - Start `iex` from the terminal command line
* Output a String with `IO.puts("Hello World!")`
* Exit `iex` with `Ctrl+c` twice, or `Ctrl+g q`

### Hello World File

* From your command line create a file `touch hello_world.exs`
* Open that file in your favourite text editor
* Add this code: `IO.puts("Hello World!")`
* Save and exit your editor
* From the command line exectute this file with  `elixir hello_world.exs`


## Interactive Elixir REPL (Read Evaluate Print Loop)

* Using `iex` to interact with Elixir
    - Start `iex` from the terminal command prompt
    - Stop `Ctrl+c` twice, or `Ctrl+g q`
* Getting help `h()`, or `h`
    - Get help on a specific topic `h(String)`, spec & type information `s, t`
    - To list a module's functions `IO.  TAB` where TAB is the tab key
    - Help "helpers" are just functions, no need for brackets
    - Directory functions `ls, cd, pwd`
    - Console functions `clear, respawn, flush`
    - Compile Elixir files `c "my_file.ex"`
* Customising `iex`
    - `h IEx.configure`
    - Permanently configure `iex` create a `~/.iex.exs` script file
    - Add the function: `IEx.configure colors: [ eval_result: [ :cyan, :bright ] ]`


## Elixir Files

* Elixir has 2 types of files
    1. Compiled files with extension `.ex` e.g. `hello_world.ex`
    2. Interpreted files or scripts with extension `.exs` e.g. `hello_world.exs`
* Compiled to bytecode to run on Erlang VM
* Interpret the files at the source level - like Ruby, Python
* Files are written in _snakecase_
* Files executed from the terminal `elixir hello_world.exs`
* Or from Interactive Elixir REPL `iex`
* Look at `IO.puts` documentation

