# SCRIPT

```bash
forge script script/DeployERC721.s.sol:MyScript --rpc-url $RPC_URL --private-key $PRIVATE_KEY --etherscan-api-key $ETHERSCAN_API_KEY --verifier-url $VERIFIER_URL --broadcast --optimize --verify
```

```bash
forge verify-contract --etherscan-api-key "myapi" --verifier-url $VERIFIER_URL 0x2c63b220c6827dffe7aa365934e448e790ef12bb ./src/My721A.sol:My721A
```
