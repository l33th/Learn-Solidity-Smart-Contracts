pragma solidity ^0.8.10;

contract L33thContract {
    uint256 public peopleCount = 0;
    mapping(uint256 => Person) public people;

    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName)
        public
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}
