pragma solidity >=0.4.21 <0.7.0;

contract Election {
    // candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Read/write Candidates
    mapping(uint => Candidate) public candidates;

    // Store Candidates Count
    uint public candidatesCount;

    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    // constructor 
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
}