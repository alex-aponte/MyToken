// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

import {AlexToken} from "../src/MyToken.sol";

contract AlexTokenDeploy is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        address owner =vm.envAddress("OWNER");

        AlexToken token = new AlexToken(owner);
        console.log("AlexToken contract deployed at:", address(token));

        vm.startBroadcast();
    }
}
