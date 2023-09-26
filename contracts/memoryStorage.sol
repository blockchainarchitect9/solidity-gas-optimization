// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

contract NotCaching {
    uint256[] myArray = [1,2,3,4,5,6,7,8,9,10];

    function arraySum() public view returns (uint256 sum) {
        for (uint256 i =0; i < myArray.length; i++) {
            sum += myArray[i];
        }
    }
}

contract Caching {
    uint256[] myArray = [1,2,3,4,5,6,7,8,9,10];

    function arraySum() public view returns (uint256 sum) {
        uint256[] memory _myArray = myArray;
        for (uint256 i =0; i < _myArray.length; i++) {
            sum += _myArray[i];
        }
    }
}