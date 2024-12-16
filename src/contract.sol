// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract VotingApp {


    string[] public options;
    mapping(uint => uint) public votes;
    mapping(address => bool) public hasVoted;
    uint public votesCount;


    function addOptions(string memory option) public {
        options.push(option);
    }

    function voting(uint optionIndex) public {
        require(optionIndex < options.length,"Select right option");
        require(!hasVoted[msg.sender],"U already voted");

        votes[optionIndex] += 1;
        hasVoted[msg.sender] = true;
        votesCount++;

    }
    function removeOption(uint256 optionIndex) public {
        require(optionIndex < options.length, "Nieprawidlowy indeks opcji");


        for (uint256 i = optionIndex; i < options.length - 1; i++) {
            options[i] = options[i + 1];
            votes[i] = votes[i + 1];
        }
        options.pop(); 
         delete votes[options.length - 1]; 
    }

    function returnOptions() public view returns(string[] memory){
        return options;
    }

    function returnVotes() public  view returns(uint[] memory){
        uint[] memory allVotes = new uint[](options.length);
        for(uint i=0; i<options.length; i++){
            allVotes[i] = votes[i];
            

        }
        return  allVotes;

    }
}
