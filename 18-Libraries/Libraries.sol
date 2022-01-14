pragma solidity ^0.8.10;

library Math {
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        required(b > 0);
        uint256 c = a / b;
        return c;
    }
}

contract lthContract {
    uint256 public value;

    function calculate(uint _value1, uint _value2) public {
        value = Math.divide(_value1, _value2);
    }
}