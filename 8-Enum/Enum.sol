pragma solidity ^0.8.11;

contract L33thContract {
    enum State { Waiting, Ready, Active }
    State public state;

    constructor() public {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Actie;
    }

    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}