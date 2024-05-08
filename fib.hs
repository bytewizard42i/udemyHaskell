fib :: Int -> Int       --Fibonacci header

fib 0 = 0       --base case 1
fib 1 = 1       --base case 2

fib n = fib (n-1) + fib (n-2) 

