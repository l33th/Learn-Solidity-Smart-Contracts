pragma solidity ^0.8.10;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;
}

contract EthContract() {
    mapping(address => uint256) public balances;
    address payable wallet;

    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );
 
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        // buy a token
        balances[msg.sender] += 1;
        // send ether to the wallet
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1)
    }
}