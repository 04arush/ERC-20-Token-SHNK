// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Test, console } from "forge-std/Test.sol";
import { Token } from "../src/Token.sol";

contract TokenTest is Test {
    Token public token;
    address deployer = address(1);  // Fake address for testing

    function setUp() public {

        vm.startPrank(deployer);

        token = new Token(1000 * 10**18);

        vm.stopPrank();
    }

    function testInitialSupply() public view {
        
        assertEq(token.balanceOf(deployer), 1000 * 10**18);
    }

    function testTokenName() public view {

        assertEq(token.name(), "ShamuNeko");
    }
}