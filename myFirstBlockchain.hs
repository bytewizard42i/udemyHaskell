data Chain =
    GenesisBlock
    |Block Chain Txs
type Txs = Int



chain1 =
    Block GenesisBlock 2
chain2 =
    Block chain1 4

