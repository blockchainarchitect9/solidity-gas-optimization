// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

contract Test1 {
    uint256 num = 1;

    function inc1() public {
        num += 1;
    }
}

contract Test2 {
    uint256 num = 1;

    function inc2() public {
        num = num + 1;
    }
}

contract Test3 {
    uint256 num = 1;

    function inc3() public {
        ++num;
    }
}

contract Test4 {
    uint256 num = 1;

    function inc4() public {
        num++;
    }
}
