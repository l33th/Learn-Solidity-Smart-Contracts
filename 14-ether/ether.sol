pragma solidity ^0.8.10;

contract EthContract() {
    mapping(address => uint256) public balances;
    address wallet;

    function buyToken() {
        // buy a token
        balances[msg.sender] += 1;
        wallet.transfer();
        // send ether to the wallet
    }
}