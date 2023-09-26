// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

contract uncheckTest {
    uint256 num = 1;

    function sum() public {
        ++num;
    }

    function sum2() public payable {
        unchecked {
            ++num;
        }
    }
}