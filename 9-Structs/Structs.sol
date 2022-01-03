pragma solidity ^0.8.10;

contract L33thContract {
    uint256 public peopleCount;
    mapping(uint -> Person) public people;

    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName)
        public
    {
        people.push(Person(_firstName, _lastName));
        peopleCount++;
    }
}
