data Chain =
    GenesisBlock        --constructor
    |Block Chain Txs    --constructor
type Txs = Int      --this makes a psuedonym for Txs which is short for "transactions". This would normally be a list of transactions, but for this example, we are just using an integer.


            --things to the left of the equals (line 8), are called "left-hand sides" that is the thing you are defining, it's and abbreviation, an identifyer that you are defining to be something, a constant in this case
chain1 =    --the whole equation (lines 8-9), are called bindings
    Block GenesisBlock 2            --Block applide to two arguments, GenesisBlock and 2
    --things on the right hand side of the equals sign (line 9), are called "right-hand sides" that is the value that you are defining the left-hand side to be.
    
chain2 =
    Block chain1 4

