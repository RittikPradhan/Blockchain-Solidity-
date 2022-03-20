//SPDX-License-Identifier: None
pragma solidity ^0.8.13;
contract MyContract {
    uint a=10;
    function Func() external view {
        if(a==10) {
            revert('Revert');
        }
        require(a!=10, 'Require');
        assert(a!=10);
    }

    function willThrow() external pure {
        //revert('Any specific Reason');
        assert(true == false);
    } 
    
    function willThrowInOtherContract() external {
        B b = new B();
        //b.Func2();
        //Whole transaction will be failed, to recover from the error :-
        address(b).call(abi.encodePacked("Func2()"));
        //call() is a low -level way of calling smart contracts, vulnerable to re-entrancy attacks. Avoid if possible.
    }
}

contract B {
    function Func2() external pure {
        revert('Because of any specific reason');
    }
}