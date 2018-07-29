fibSeq := list(1, 1)

fib := method(n,
  if(n < 3) then(
    writeln("fib(", n, ") = 1")
  ) else(
    i := 1
    while(i < (n-1),
      nextFibNumber := ((fibSeq at(i)) + (fibSeq at(i-1))); 
      fibSeq append(nextFibNumber);
      i = i + 1
    )
    writeln("fib(", n, ") = ", fibSeq at(n-1), " -> ", fibSeq)
  )
)

fib(5)