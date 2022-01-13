pragma solidity ^0.8.10;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    constructor(string memory _name) public {
        name = _name;
    }

    function mint() public {
        balances[tx.origin] ++;
    }
}

contract PseudoToken is ERC20Token {
    constructor(string memory _name) ERC20Token(_name) public {
        
    }
}