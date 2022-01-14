pragma solidity ^0.8.10;

import "./Math.sol";

contract lthContract {
    uint256 public value;

    function calculate(uint _value1, uint _value2) public {
        value = Math.divide(_value1, _value2);
    }
}