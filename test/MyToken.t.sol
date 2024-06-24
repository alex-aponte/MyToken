// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {AlexToken} from "../src/MyToken.sol";
//import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyTokeTest is Test {
    address owner = address(0xABC);

    AlexToken public mytoken;

    function setUp() public {
        mytoken = new AlexToken(owner);
        // counter.setNumber(0);
    }

    function testSuccess_Mint() public {
        uint256 amount = 100000000000000000000000;
        address userA = address(0xFFF);

        vm.startPrank(owner);
        mytoken.mint(userA, amount);

        uint256 userBalance = mytoken.balanceOf(userA);

        assertEq(amount, userBalance);
    }

    function testSuccess_Transfer() public {
        uint256 amount = 100000000000000000000000;
        uint256 amountToTransfer = 50000000000000000000000;
        address userA = address(0xFFF);
        address userB = address(0x12345);

        vm.startPrank(owner);
        mytoken.mint(userA, amount);
        vm.stopPrank();

        vm.startPrank(userA);
        mytoken.transfer(userB, amountToTransfer);
        vm.stopPrank();

        uint256 userBalance = mytoken.balanceOf(userB);

        assertEq(amountToTransfer, userBalance);
    }
}
