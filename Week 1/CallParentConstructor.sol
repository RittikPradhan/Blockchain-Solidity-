//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract Parent {
    constructor(uint a) public {
        //do some stuff
    }
}

contract MyContract is Parent {
    constructor(uint _a) Parent(_a) public {
        //Can be empty
        //This pattern is very used when we define ERC20 tokens
    }
}