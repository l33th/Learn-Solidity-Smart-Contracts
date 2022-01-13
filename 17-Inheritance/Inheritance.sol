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
    string public symbol;
    address[] public owners;
    uint256 ownerCount;
    
    constructor(string memory _name, string memory _symbol) ERC20Token(_name) public {
        symbol = _symbol;
    }

    function mint() public {
        
    }
}