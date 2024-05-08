myButLast :: [a] -> a

myButLast [x,_] = x
myButLast (x:xs) = myButLast xs

{-
L = [2,3,5,7] -> 5
BaseCaseList = [2,3] -> 2

(x:xs) lets break this down...
x = [2] (head of the list)
xs = [3,5,7] (tail of the list)
-}

{- ----------------------------------------------------------------- -}

{- 
1st variation of the function
-}

myButLast2 :: [b] -> b

{-
myButLast2 [] = error "Empty List"    --throws an error if the list is empty
myButLast2 [b] = error "Single Element List"
-}

myButLast2 = head . tail . reverse
