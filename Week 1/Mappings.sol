//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract Mappings {
    //Declare Mapping
    mapping(address => uint) balances; //State Variable

    //Exotic Mapping 1: Nested Mapping
    mapping(address => mapping(address => bool)) approved;
    //Used in ERC20 token approval system, one user can allow another address to spend coin on it's behalf.

    //Exotic Mapping 2: Array inside Mapping
    mapping(address => uint[]) scores;

    function Mapping_Operations(address spender) external {
        //Add elements to mapping
        balances[msg.sender] = 2000;
        //Read mapping
        balances[msg.sender];
        //Update mapping
        balances[msg.sender] = 5000;
        //Delete entry
        delete balances[msg.sender];

        //Default Values for the addressess which doesn't even exists have 0(uint)/false(bool) as their default value

        //Exotic Mapping 1: Nested Mapping
        //Add
        approved[msg.sender][spender] = true;
        //Read
        approved[msg.sender][spender];
        //Update
        approved[msg.sender][spender] = false;
        //Delete
        delete approved[msg.sender][spender];

        //Exotic Mapping 2: Array inside Mapping
        //Adding elements - Note: Array Already Instantiated in Solidity
        scores[msg.sender].push(1); scores[msg.sender].push(2);
        //Read
        scores[msg.sender][0];
        //Update
        scores[msg.sender][0]=10;
        //Delete
        delete scores[msg.sender][0];
    }
}