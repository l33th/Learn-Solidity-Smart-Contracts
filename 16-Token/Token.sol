pragma solidity ^0.8.10;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    function mint() public {
        balances[msg.sender] ++;
    }
}

contract EthContract {
    address payable wallet;
    address token;
 
    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        ERC20Token(address(token));
        wallet.transfer(msg.value);
    }
}