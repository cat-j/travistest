pragma solidity ^0.4.20;

contract Dummy {
    uint a;

    function Dummy() public {
        a = 1;
    }

    function getA() public view returns (uint) {
        return a;
    }

    function setA(uint _a) public {
        a = _a;
    }
}