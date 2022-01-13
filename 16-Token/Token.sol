pragma solidity ^0.8.10;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;
    function mint() public {
        balances[msg.sender] ++;
    }
}

contract EthContract() {
    mapping(address => uint256) public balances;
    address payable wallet;
 
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        wallet.transfer(msg.value);
    }
}