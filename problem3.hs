dupli :: [a] -> [a]     --type header

dupli [] = [] 
dupli (x:xs) = x:x: dupli xs

{-
dupli [1,2,3] 
[1,1,2,2,3,3]

-}