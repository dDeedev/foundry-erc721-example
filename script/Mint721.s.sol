// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import { MyNFT } from "../src/MyNFT.sol";

contract MintScript is Script {
    address ownerAddress;
    address nftContractAddress;

    function setUp() public {
        // You need to set the ownerAddress to a valid Ethereum address.
        ownerAddress = vm.envAddress("OWNER");
        nftContractAddress = vm.envAddress("NFT_CONTRACT");
    }

    function run() external {
        vm.startBroadcast();
        // Explicitly cast the address to MyNFT type using the payable keyword if needed
        SmitivejNFT nft = SmitivejNFT(payable(nftContractAddress));
        nft.safeMint(ownerAddress);
        vm.stopBroadcast();
    }
}
