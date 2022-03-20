//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
library Math {
    //Can't declare state varables

    function max(uint a, uint b) internal pure returns(uint) {
        //If made public then we need to deploy this library separately
        //Internal - will be deployed with the contract
        return (a>b)?a:b;
    }
}

contract TestLibrary {
    function testMax(uint x, uint y) external pure returns(uint) {
        return Math.max(x,y);
    }
}

//Enhance a datatype - uint array
library ArrayLib{
    function position(uint[] storage arr, uint x) internal view returns (uint) { //storage, view : Reading from state variable.
        for(uint i=0;i<arr.length;i++) {
            if(arr[i]==x)
                return i;
        }
        revert("Not Found");
    }
}

contract TestArray {
    using ArrayLib for uint[];
    uint[] public a = [1,2,3];
    function findPosition() external view returns (uint) {
        //return ArrayLib.position(a,2);
        return a.position(2);
    }
}