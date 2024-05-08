factorial :: Integer -> Integer
-- type header of the function

factorial 0 = 1     -- base case
factorial n = n * factorial (n-1) -- recursive case

double x = 2 * x 