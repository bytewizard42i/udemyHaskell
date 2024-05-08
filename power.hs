power :: Int -> Int -> Int

-- paterns 1st argument base, second argument = power
power x 0 = 1     -- base case
power x p
    | even p = n * n
    | otherwise = n * n * x
    where n = power x (p `div` 2)

