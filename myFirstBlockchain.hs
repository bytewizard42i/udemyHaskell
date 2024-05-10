data Chain =
    GenesisBlock        --constructor
    |Block Chain Txs    --constructor
type Txs = Int      --this makes a psuedonym for Txs which is short for "transactions". This would normally be a list of transactions, but for this example, we are just using an integer.



chain1 =
    Block GenesisBlock 2
chain2 =
    Block chain1 4

