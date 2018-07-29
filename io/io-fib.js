// Iterative
let fibSeq = [1, 1];

const fib = (n) => {
  if (n < 3) {
    console.log(`fib(${n}) = 1`);
  } else {
    let i = 1;
    while (i < (n-1)) {
      nextFibNumber = (fibSeq[i] + fibSeq[(i-1)]);
      fibSeq.push(nextFibNumber);
      i++; 
    }
    console.log(`fib(${n}) = ${fibSeq[(n-1)]} -> ${fibSeq}`);
  }
}

fib(5);


// Recursive
n = 10;

const fib = (n) => {
  if (n < 2) {
    return n;
  } else {
    return fib(n-2) + fib(n-1)
  }
}

for (var i = 0; i <= n; i++) {
  console.log(`fib(${i}) = ${fib(i)}`);
}
