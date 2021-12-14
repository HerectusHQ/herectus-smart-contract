# Herectus $BIGD Smart Contract

Solidity v0.8^ smart contract BEP20 compliant tokens to be deployed to the Binance Smart Chain (BSC) blockchains. Developed using Truffle and Ganache for easy testing and deployments, please consult to each of said tools for instructions on how to run this project. 

### Scripts

- `add-liquidity.js`: Script to programmatically create a PancakeSwap pair, and add liquidity to the pool, to allow other users to swap tokens for the given token through PancakeSwap.
- `airdrop.js`: Used to programmatically airdrop your token to a list of wallet addresses - can incur large transaction costs due to each airdrop being its on transaction on the network.
- `swap-tokens.js`: Can be used to test the liquidity pool of a token. Essentially "buys" the native token using BNB by swapping BNB to the native token through the PancakeSwap router contract.


### Tests

Some tests are found under the `test/` folder, including for `ReflectCoin` and `ReflectFeeCoin`. Bear in mind the last test in `ReflectFeeCoin` shows a tiny backdoor that can be used if ownership is not renounced (transfer ownership to `0x0` address). Essentially, one might lock up the liquidity pool using an external locker for `x` days, and people will usually perceive the token to be at least safe for those `x` days. However, it is completely possible to just set `maxTxPercent` to `0`, which essentially completely disables transfers with the contract (disabling the ability to "sell", or swap away from the token to BNB). Thus the malicious owner could just wait out the `x` days with no activity, and then remove the liquidity once the lock is over.
