pragma solidity ^0.8.10;

contract AbstractContract {
    string public value = "l33thContract";

    function set(string memory _value) public {
        value = _value;
    }
}
