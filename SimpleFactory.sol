// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import{SimpleVoting} from "SimpleVoting.sol";

contract SimpleFactory {

    SimpleVoting[] public listOfSimpleVotingContacts;

    function createSimpleVotingContract() public {
        SimpleVoting simpleVotingInstance = new SimpleVoting();
        listOfSimpleVotingContacts.push(simpleVotingInstance);
    }

    function SFAddVote(string memory _name, string memory _vote, uint256 indexNo) public {
        listOfSimpleVotingContacts[indexNo].addVote(_name,_vote);
    }

    function SFGetVote(uint256 indexNo, string memory _name) public view returns (string memory){
        return listOfSimpleVotingContacts[indexNo].getVoteFromName(_name);
    }

}