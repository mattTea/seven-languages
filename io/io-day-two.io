fib := method(n,

  if(n > 1) then(writeln("fib(", n, ") = ", (fib((n-1)) + fib((n-2))))) else(writeln("fib(", n, ") = 1"))

  // of course above doesn't work, because we don't have an array for fib number positions yet - so fib(n-1) doesn't exist!

)

fib(6)
