// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

// https://ethereum.org/en/developers/docs/gas/

// Solidity compiler reads and execute function names by their selector. 
// The selector is the first four bytes of the keccak256 hash of the function signature.

// The Solidity compiler will sort all the functions in a contract by their selector (in hexadecimal order) and will go through each of them when executing any function call to check which is the function selector called. Going through each of the function on a contract will cost 22 gas.

contract Storage {
    function blue() public {}

    function green() public {}

    function purple() public {}

    function red() public {}

    function white() public {}

    function yellow() public {}
}
