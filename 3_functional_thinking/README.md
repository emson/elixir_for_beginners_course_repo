# Functional Thinking

If you want to create hugely scalable and fault tolerant systems.
You will need to solve a number of key problems:

* Concurrency
* Fault tolerance
* Release management

## Concurrency

Concurrency is where multiple processes in system can all execute at the same
time. In particular this is exasperated when systems scale to run across many servers.

In traditional OO software there is one main thread of execution, which can
spawn further threads. Couple this with objects mutating the state of their
encapsulated data, and we have a very high likelyhood of race conditions occuring.
If you scale such a system it exposes errors which are very difficult to track down.


Ideally we want to run our code across all the servers in our network. Also we
want our system to handle faults in our code and even restart it where possible.

Erlang enables us to tackle these sorts of problems, by using virtual machines
that run across your network. If we then break our code down into small
components or modules we can then run it within small lightweight processes.
This is known as the Actor model. Actors or processes are independent of one
another but can communicate using messages.


The choice of using virtual machines, and the Actor model enable a very fli


Concurrency can be solved by creating a virtual machine that runs across all
the servers in our system. If we then put all our code into small lightweight
processes then we


Concurrency can be solved by following the Actor model. Create many lightweight
processes that communicate with each other using messages. This way we can have
processes run across all our servers

Why should I use a functional language?



Writing functional code requires a mind shift away from Object Orientated
approaches.
Data in functional languages is immutable and cannot change, this causes a
problem when we are using mutations in loops. For example the following `for`
loop mutates the variable `i` e.g.

    for(int i = 0; i < 10; i++) {
      System.out.println();
    }


