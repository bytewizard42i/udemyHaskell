import Distribution.Compiler (CompilerFlavor(GHC))
data Chain =
    GenesisBlock        --constructor
    |Block Chain Txs    --constructor
type Txs = Int      --this makes a psuedonym for Txs which is short for "transactions". This would normally be a list of transactions, but for this example, we are just using an integer.


            --things to the left of the equals (line 8), are called "left-hand sides" that is the thing you are defining, it's and abbreviation, an identifyer that you are defining to be something, a constant in this case
chain1 =    --the whole equation (lines 8-9), are called bindings
    Block GenesisBlock 2            --Block applide to two arguments, GenesisBlock and 2
    --things on the right hand side of the equals sign (line 9), are called "right-hand sides" that is the value that you are defining the left-hand side to be.
    --the things that occur on the right hand side are called expressions, nested f(x) applications and copnstants, they are the things that are evaluated to produce the value that the left-hand side is bound to.
    
chain2 =
    Block chain1 
    
chain2' =   --this is a variant of chain2 defined with the character ' at the end of the name it is not any f(x), just a commonly used part of the name
    Block chain1 3

{- ------------------------------------------------- -}
-- :: = is of type
--our first f(x) chainlength (line 22), operates on our chain data type, and then computes the number of blocks not counting the GenesisBlock (in this case). Such a f(x) is also done by means of equations, but you can have multiple equations that define a single f(x), and you can optionally have a type signature. It's optional because Haskell has type inference, so you don't have to write it, but it's a good idea to write it because it makes your code more readable and it's a good way to document your code.
chainLength :: Chain -> Int   --this is the type signature, it says that chainLength is a function that takes a Chain and returns an Int
chainLength GenesisBlock = 0 
chainLength (Block c _)  = chainLength c + 1   --you can put () around chainlength c to show that it is a single argument, but it is not necessary

--GHC compiler
--GHCI is the interactive version of GHC
--cabal is a package and tools tool (for larger programs)