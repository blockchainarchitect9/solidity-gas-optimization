// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

contract A1 {
    function NoK() public pure {
        uint256[] memory oneArray;
    }

    function OneK() public pure {
        uint256[1000] memory oneArray;
    }

    function TenK() public pure {
        uint256[10000] memory oneArray;
    }

    function TwentyK() public pure {
        uint256[20000] memory oneArray;
    }
}
