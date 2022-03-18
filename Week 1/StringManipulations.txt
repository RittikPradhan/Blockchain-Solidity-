//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract StringManipulatons {
    function length(string calldata str) external pure returns (uint) {
        return bytes(str).length;
    }

    function concatenate(string calldata s1, string calldata s2) external pure returns (string memory) {
        return string(abi.encodePacked(s1,s2)); 
    }

    function reverse(string calldata str2) external pure returns (string memory) {
        bytes memory str = bytes(str2);
        string  memory temp = new string(str.length);
        bytes memory _reverse = bytes(temp);
        for(uint i=0;i<str.length;i++) {
            _reverse[str.length -i - 1] = str[i];
        }
        return string(_reverse);
    }
    function compare(string calldata st1, string calldata st2) external pure returns (bool) {
        return keccak256(abi.encodePacked(st1)) == keccak256(abi.encodePacked(st2));
    }
}