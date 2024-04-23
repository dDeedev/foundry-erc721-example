// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {SmitivejNFT} from "../src/MyNFT.sol";

contract MyScript is Script {
    function run() external returns (SmitivejNFT) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        SmitivejNFT myNFTToken = new SmitivejNFT("SmitivejNFT", "SMV", "baseUri");

        vm.stopBroadcast();
        return myNFTToken;
    }
}
