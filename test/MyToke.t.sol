// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {AlexToken} from "../src/MyToken.sol";

contract MyTokeTest is Test {
    address owner = address(0xABC);

    AlexToken public mytoken;


    function setUp() public {
        mytoken = new AlexToken(owner);
       // counter.setNumber(0);
    }

   
}
