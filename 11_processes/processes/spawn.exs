## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

## Spawn link
#  spawn_link will cause the parent process
#  to fail if child fails
spawn fn -> raise "Boom" end
# spawn_link fn -> raise "Boom" end

receive do
  :my_msg -> "...invoked if :my_msg is received"
end

## Linking is important in creating fault tolerant systems
#  our Supervisor processes will be able to restart a failed
#  process if that process is "linked" to the Supervisor.


