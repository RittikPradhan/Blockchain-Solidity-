//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract Variables {
    //1. Fixed-Size Types
    bool booleanVariable;
    uint unsignedIntegerVariable=11;
    address ethereumAddress;
    bytes32 binaryData;

    //2. Variable-Size Types
    string name;
    bytes _binaryData;
    uint[] amounts;
    mapping(uint => string) users; //users[10] => 'abcd'

    //3. User-Defined data
    struct User {
        uint id;
        string name;
        uint[] friendIds;
    }

    enum Color {
        RED, 
        GREEN, 
        BLUE
    }
    //Color.RED, COLOR.BLUE

    function assign_values_Fixed_Size(bool _bV, uint _uIV, address _eA, bytes32 _bD) public {
        booleanVariable = _bV;
        unsignedIntegerVariable = _uIV;
        ethereumAddress = _eA;
        binaryData = _bD;
    }

    function assign_values_Variable_Size(string calldata _name, bytes calldata __bD) public {
        name = _name;
        _binaryData = __bD;
        amounts = [1000,2000,5000,10000];
        users[0] = 'User1'; users[1] = 'User2';
    }

}