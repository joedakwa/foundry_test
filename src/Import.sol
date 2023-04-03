// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "solmate/tokens/ERC20.sol";
import "forge-std/Test.sol";

contract Token is ERC20("name", "symbol", 18) {}

