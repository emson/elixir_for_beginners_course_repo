## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

## Processes
#  processes are lightweight and cheap to create
pid = spawn fn -> :ping end
# process will spawn then die
Process.alive? pid


## Sending/receving
#  send a message to the process mailbox
#  here the we send a tuple to the current
#  process mailbox, where it will sit until
#  we get it with the receive function
pid = self()
send pid, {pid, :ping}

# get message from mailbox
# uses pattern matching, multiple clauses and guards
receive do
  msg -> "Message: #{inspect msg}"
  # {sender, action} -> "Sender: #{inspect sender} sent #{inspect action}"
end


## Receive will keep waiting to process a message
#  however you can timeout the system
receive do
  msg -> "Message: #{inspect msg}"
after
  1_000 -> "...timed out after 2 seconds"
end


## Send a message from a spawned process
#  to the current process
main_pid = self
pid = spawn fn -> send main_pid, {self, :ping} end

receive do
  {sender, action -> "sender #{inspect sender} sent #{inspect action}"
after
  1_000 -> "...timed out"
end

## Processes that fail
#  with a spawned process only that process
#  will fail not the parent
boom_pid = spawn fn -> raise "Boom" end

#  spawn_link will kill the parent process too
#  this is useful for Supervisor processes
#  which will bring the process backup if it fails
boom_pid = spawn_link fn -> raise "Boom" end

# Even better use Task
# as it provides better logging and outputs
# a tuple {:ok, pid}
boom_pid = Task.start fn -> raise "Boom" end
boom_pid = Task.start_link fn -> raise "Boom" end

