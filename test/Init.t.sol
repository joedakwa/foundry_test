// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/Init.sol";
import "ds-test/test.sol";



contract TestInit is DSTest {
    Init public init;

    function setUp() external {
        init = new Init();
        init.initialize();
        init.updateProtocolTreasury(payable(address(0)));
        init.updateProtocolFeePercentage(0);
    }

    function testProtocolFeePercentage() public {
        assertEq(init.protocolFeePercentage(), 0);
        init.updateProtocolFeePercentage(100);
        assertEq(init.protocolFeePercentage(), 100);
    }

    function testProtocolTreasury() public {
        assertEq(init.protocolTreasury(), address(0));
        init.updateProtocolTreasury(payable(address(1)));
        assertEq(init.protocolTreasury(), address(1));
    }
}















