//SPDX-License-Identifier: None
pragma solidity ^0.8.13;

/*
Keccak256 (Cryptographic Hash Function)
- What is it?
    - function that takes in arbitrary size input and outputs a data of fixed size
    - properties 
        - deterministic
            - hash(x) = h, everytime
        - quick to compute the hash
        - irreversible
            - given h, hard to find x such that hash(x) = h
        - small change in input changes the output significantly 
        - collision resistant
Example
- guessing game (pseudo random) 

*/

contract HashFunction {
    //turn into 32byte hash(bytes as input(all types of data in any amount))
    //bytes32 hash = keccak256(abi.encodePacked("hello",uint(1), uint(2), address(123)));

    function hash(string memory _text, uint _num, address _addr) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }

    function collision(string memory st1, string memory st2) public pure returns(bytes32) {
        // AAA BBB -> AAABBB
        // AA ABBB -> AAABBB 
        //return keccak256(abi.encodePacked(st1,st2));
        //To prevent Hash collision we use:
        return keccak256(abi.encode(st1,st2));
        //0xd6da8b03238087e6936e7b951b58424ff2783accb08af423b2b9a71cb02bd18b
        //0x54bc5894818c61a0ab427d51905bc936ae11a8111a8b373e53c8a34720957abb
    }
}
contract GuessTheMagicWord {
    bytes32 public answer = 0x60298f78cc0b47170ba79c10aa3851d7648bd96f2f8e46a19dbc777c36fb0c00;
    
    function guess(string memory _word) public view returns (bool) {
        return keccak256(abi.encodePacked(_word)) == answer;
    }
}