# Voting DApp

This is a decentralized voting application built with Solidity for the smart contract and React.js for the frontend. The smart contract allows users to add voting options, cast their votes, and retrieve results, while the React frontend provides an interface for interacting with the contract.

## Features

- **Add Voting Options:** Users can add new options to the poll.
- **Vote Once Per User:** Each user can vote only once to ensure fairness.
- **View Votes:** Users can see the current voting results.
- **Remove Options:** The contract allows removing an option from the list.

## Technologies Used

- **Solidity**: Smart contract development
- **Ethereum**: Blockchain for deployment
- **ethers.js**: Interacting with the smart contract
- **React.js**: Frontend development
- **MetaMask**: Web3 wallet for user authentication

---

## Smart Contract: `VotingApp.sol`

### Functions

1. **`addOptions(string memory option)`**
   - Allows users to add new voting options.

2. **`voting(uint optionIndex)`**
   - Users vote for an option by passing its index.
   - Ensures a user votes only once.
   - Increments the vote count for the selected option.

3. **`removeOption(uint256 optionIndex)`**
   - Removes an option from the poll.
   - Updates the vote count accordingly.

4. **`returnOptions() public view returns(string[] memory)`**
   - Returns the list of available options.

5. **`returnVotes() public view returns(uint[] memory)`**
   - Returns the number of votes for each option.

---

## React Frontend: `App.js`

### Functionality:

- Connects to Ethereum using MetaMask.
- Fetches voting options and results from the smart contract.
- Allows users to vote by selecting an option.
- Displays real-time vote counts.

### Implementation:

- Uses `ethers.js` to connect to the blockchain.
- Calls smart contract functions for voting and retrieving results.
- Stores the connected wallet address in the state.

---

## Installation

### **1. Clone the Repository**
```bash
git clone <repository_url>
cd <repository_directory>
