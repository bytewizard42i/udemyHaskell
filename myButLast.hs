myButLast :: [a] -> a

myButLast [x,_] = x
-- myButLast (x:xs) = myButLast xs   we dont care about the head (x) of the list,
--so we make it annonamous by using _ (underscore) instead of x
myButLast (_:xs) = myButLast xs   --then we tell the program to apply the 
--function to the tail of the list (xs) which chops off the head of the list

{-
L = [2,3,5,7] -> 5
first we try to find the BaseCaseList = [2,3] -> 2

(x:xs) lets break this down...
x = [2] (head of the list)
xs = [3,5,7] (tail of the list)
-}

{- ----------------------------------------------------------------- -}
 
-- 1st variation of the function

--  myButLast2 :: [b] -> b

{-
myButLast2 [] = error "Empty List"    --throws an error if the list is empty
myButLast2 [b] = error "Single Element List"

Reverse -> tail -> head
L = [6,2,8,5]
Reverse L = [5,8,2,6]   (r)
Tail of Reverse L = [8,2,6]  (t)
Head of Tail of Reverse L = 8 (h)
-}


myButLast2 :: [a] -> a
myButLast2 = head . tail . reverse   --  because => h(t(r(x)))  
-- . . are f(x) composition
