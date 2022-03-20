//SPDX-License-Identifier: None
pragma solidity ^0.8.13;

//Usecase 1: To Receive Ether
//Usecase 2: "Fallback" - Trying to call a function which doesn't exists

contract A {
    //No function name
    //Only one Fallback function in a smart contract
    //No arguments in fallback function - possible to access some data
    //Only External visiblity allowed
    //Payable keyword to accept Ether

    /*function() payable external {
        //To reject all incomming call
        revert('');

        //Selective rejection - When data is send
        if(msg.data.length>0) {
            revert('');
        }
        //To reject Ether Transfer - Remove payable keyword
    }
    */
    fallback() external payable {
    }
}
contract B {
    function Fb() external {
        A a = new A();
        InterfaceA(address(a)).doesNotExist();

        address payable a_payable = address(uint160(address(a))); 
        //160bit in an address in a address
        a_payable.transfer(100);


    }
}
interface InterfaceA {
    function doesNotExist() external;
} 