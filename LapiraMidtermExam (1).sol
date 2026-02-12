// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LastnameSecCon is ERC20, Ownable {

    bytes32 public secretHash;

    constructor(bytes32 _secretHash) 
        ERC20("BLOCK", "CON") 
        Ownable(msg.sender) 
    {
        secretHash = _secretHash;
    }

    function claimTokens(string memory _password, uint256 _amount) public {

        bytes32 enteredHash = keccak256(abi.encodePacked(_password));

        require(enteredHash == secretHash, "Incorrect password");

        _mint(msg.sender, _amount);
    }
}

//Lapira, Xavier Kyle M.
