//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract Parent {
    function Func1() public pure virtual returns (string memory) {
        //virtual : Function can be inherited and customizable by the child contract
        return "Parent Function";
    }
    function Func2() public pure virtual returns (string memory) {
        return "Parent Function";
    }
    function Func3() public pure returns (string memory) {
        return "Parent Function";
    }

}

contract Child is Parent {
    function Func1() public pure override returns (string memory) {
        return "Child Function";
    }
    function Func2() public pure virtual override returns (string memory) {
        return "Child Function";
    }
}

contract SecondChild is Child {
    function Func2() public pure override returns (string memory) {
        return "SecondChild Function";
    }
}