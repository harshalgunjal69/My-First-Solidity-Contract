// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleVoting {

    uint256 public yourVoterID;
    string public yourVote;
    string public yourName;

    struct person {
        string yourName;
        uint256 yourVoterID;
    }

    person[] public listOfPeople;

    mapping(string => string) nameToVote; 

    function addPerson(string memory _name, uint256 _voterID) public{
        yourVoterID = _voterID;
        yourName = _name;
        listOfPeople.push(person(_name, _voterID));
    }

    function addVote(string memory _name, string memory _vote) public{
        yourVote = _vote;
        yourName = _name;
        nameToVote[_name] = _vote;    
    }

    function getVoteFromName(string memory _name) public view returns (string memory){
        return nameToVote[_name];
    }

}