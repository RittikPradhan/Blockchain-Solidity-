//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract TestEvents {
    event NewTrade (
        uint date,
        address indexed from,
        address to,
        uint amount
        /*indexed keyword - outside consumers might only want to listen only specific events from many. 
        To filter out on specific events, Eg: just to listen only hi own trade filter from address. 
        Max 3 indexed keyword in an event - Make it more expensive for Etherium to store us events
        */
    );
    function Trade(address to, uint amount) external {
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
    //To listen event - need to use web3 library

    /*Important :
    1. Events can't be read from smartcontracts, eg: emit NewTrade will be consumed by entities outside the blockchain
    (One way Communication- From blockchain to outside world)
    2. Gas Cost is lower than the storage variables.
    */


}