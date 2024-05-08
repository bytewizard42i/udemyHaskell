myLast :: [a] -> a


myLast [] = error "Empty list"
myLast [x] = x     -- one element
myLast (_:xs) = myLast xs      -- two elements + we dont care about 1st x 





{- L = [3] -> 5
       [8] -> 8
       ['a'] -> 'a'
       [x] -> x

       L = [2,6,7,1] -> 1

       (head:tail) = [2,6,7,1]    --cutting up the list
       (x, xs) = (2, [6,7,1])
       -}
{- ----------------------------------------------------- -}

myLast2 :: [a] -> a


myLast2 x = head (reverse x)  -- head takes the first element of the list
--another way to do it

{- 
    head [8,3,5] -> 8
    reverse [8,3,5] -> [5,3,8]
    head [5,3,8] -> 5
-}


{- ----------------------------------------------------- -}

myLast3 :: [a] -> a

myLast3 = head . reverse

{- f(x) = head 
   g(x) = reverse
   f(g(x)) = head . reverse  
   
   . is a function composition operator
   -}












