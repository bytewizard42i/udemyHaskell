summ :: [Int] -> Int
summ [] = 0
summ [7] = 7 
summ [x] = x
summ (x:xs) = x + summ xs

{-
Steps for completing recursive f(x)
*1. Write down the type signature. This will help to defin the
function and its arguments later.
*2. Enumerate the possible cases you could have based on its inputs
*3. Between all the previously instanciated cases, identify which are the 
simplest ones and define them. They are the base cases
*4. Think about what you have available to you
*5. define the rest of the cases
*6. Test the function

*For recursive f(x) that take non-negative #s as input
you usually (but not always) have a base case that is 0 or 1 (depending
on the operation) and a recursive case of n.
*For recursive f(x) that take lists as input, you usually (but not always)
have a base case (or edge case) that is an empty list [], and a 
recursive case of (x:xs) (non-empty list)
-}