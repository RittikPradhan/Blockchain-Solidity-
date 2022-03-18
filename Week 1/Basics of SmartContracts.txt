//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract MyContract {
    uint a =10;
    
    function add(uint b, uint c) public view returns (uint) {
        return a+b+c;
    }

    //Single Line Comment

    /* Multi
       Line
       Comment */

}
