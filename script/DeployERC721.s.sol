// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {MyNFT} from "../src/MyNFT.sol";

contract MyScript is Script {
    function run() external returns (MyNFT) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        MyNFT myNFTToken = new MyNFT("MyNFT", "NFT", "baseUri");

        vm.stopBroadcast();
        return myNFTToken;
    }
}
