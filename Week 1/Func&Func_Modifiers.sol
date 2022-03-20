//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract MyContract {
    uint value;
    function getValue() external view returns (uint) {
        return value;
    }
    function setValue(uint _value) external {
        value = _value;
    }
    /*Function Modifier Keywords:
        1. view : Read-only Function, Not going to modify the blockchain. - constant keyword in older version. //API call  by Solidity- eth_call 
        2. pure : Read-only Function, to do computation(eg: calc hash, return 1+1 ;) //API call by Solidity - eth_call 
        3. No_keyword_Used : Function allows to modify the blockchain. //API call by Solidity - eth_sendTransaction
    */
}