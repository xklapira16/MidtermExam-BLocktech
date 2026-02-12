// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract XavierKyleLapira {
    function getHash() public pure returns (bytes32) {
        return keccak256(abi.encodePacked("BLOCK"));
    }
}