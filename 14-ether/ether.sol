pragma solidity ^0.8.10;

contract EthContract() {
    mapping(address => uint256) public balances;

    function buyToken() {
        // buy a token
        balances[msg.sender] += 1;
        // send ether to the wallet
    }
}