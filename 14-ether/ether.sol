pragma solidity ^0.8.10;

contract EthContract() {
    mapping(address => uint256) public balances;
    address wallet;

    constructor(address _wallet) public {
        wallet = _wallet;
    }

    function buyToken() public {
        // buy a token
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        // send ether to the wallet
    }
}