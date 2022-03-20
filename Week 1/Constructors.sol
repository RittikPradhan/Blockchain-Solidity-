//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract MyContract {
    uint a;

    //admin pattern - To protect some functions from being called by anyone.
    address admin;

    //declaration
    //Only called once when smart contract is deployed
    constructor(uint _a) public {
        //only two visiblity keywords can be used : public, internal
        a = _a;
        admin = msg.sender;
        Func();
    }

    function Func() public {
        a=2;
    }
}