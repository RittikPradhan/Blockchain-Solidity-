//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract SampleS {
    function length(string calldata s) external pure returns (uint) {
        return bytes(s).length;
    }
    function concatenate(string calldata s1, string calldata s2) external pure returns (string memory) {
        return string(abi.encode(s1,s2));
    }
    function reverse(string calldata _s) external view returns (string memory, bool) {
        bytes memory str = bytes(_s);
        string memory temp = new string(str.length);
        bytes memory _reverse = bytes(temp);
        for(uint i=0;i<str.length;i++) {
            _reverse[str.length -i -1] = str[i];
        }
        
        return (string(_reverse),this.compare(_s,string(_reverse)));

    }
    function compare(string calldata st1, string calldata st2) external pure returns (bool) {
        return keccak256(abi.encodePacked(st1)) == keccak256(abi.encodePacked(st2));
    }

}