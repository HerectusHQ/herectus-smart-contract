# Herectus $BIGD Smart Contract

Solidity v0.8^ smart contract BEP20 compliant BIGD token to be deployed to the Binance Smart Chain (BSC) blockchains. 

Developed using Truffle and Ganache for easy testing and deployments, please consult to each of said tools for instructions on how to run this project.

### Scripts

- `add-liquidity.js`: Script to programmatically create a PancakeSwap pair, and add liquidity to the pool, to allow other users to swap tokens for the given token through PancakeSwap.
- `airdrop.js`: Used to programmatically airdrop your token to a list of wallet addresses - can incur large transaction costs due to each airdrop being its on transaction on the network.
- `swap-tokens.js`: Can be used to test the liquidity pool of a token. Essentially "buys" the native token using BNB by swapping BNB to the native token through the PancakeSwap router contract.


### Automatic contract verification

```bash
truffle run verify Herectus@0xcf173b78e782508e370ac05f72143dd956f61c62 --network bsc
```
