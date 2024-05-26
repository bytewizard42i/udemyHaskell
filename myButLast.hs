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

Reverse -> tail -> head
L = [6,2,8,5]
Reverse L = [5,8,2,6]   (r)
Tail of Reverse L = [8,2,6]  (t)
Head of Tail of Reverse L = 8 (h)
-}

myButLast2 = head . tail . reverse   --  because => h(t(r(x)))
