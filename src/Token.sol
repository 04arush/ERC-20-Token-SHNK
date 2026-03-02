// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";  // Import OpenZeppelin's ERC-20 Template

contract Token is ERC20 {
    
    constructor(uint256 initialSupply) ERC20("ShamuNeko", "SHNK") {
        _mint(msg.sender, initialSupply);
    }
}