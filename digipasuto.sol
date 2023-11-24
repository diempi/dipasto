// SPDX-License-Identifier: MIT
// Solidity
pragma solidity ^0.8.0;

contract DigitalPassport {
    struct Experience {
        string place;
        string experience;
    }

    mapping(address => Experience[]) public passports;

    function addExperience(string memory _place, string memory _experience) public {
        Experience memory newExperience = Experience(_place, _experience);
        passports[msg.sender].push(newExperience);
    }

    function getPassport(address _user) public view returns (Experience[] memory) {
        return passports[_user];
    }
}