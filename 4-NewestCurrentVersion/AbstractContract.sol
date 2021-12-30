pragma solidity ^0.8.11;

contract AbstractContract {
    string public value;

    constructor() {
        value = "myValue";
    }

    function set(string memory _value) public {
        value = _value;
    }
}
