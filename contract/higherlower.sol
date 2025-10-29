// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HigherLowerGame {
    uint256 public currentNumber;
    address public lastPlayer;
    string public lastResult;

    constructor() {
        // Initialize with a pseudo-random number
        currentNumber = _random();
    }

    // Function to guess: true = higher, false = lower
    function guess(bool isHigher) public returns (string memory) {
        lastPlayer = msg.sender;
        uint256 nextNumber = _random();

creation of HigherLowerGame pending...
creation of HigherLowerGame errored: Error occurred: MetaMask Tx Signature: User denied transaction signature..

MetaMask Tx Signature: User denied transaction signature.

If the transaction failed for not having enough gas, try increasing the gas limit gently.
>
RemixAI Assistant
RemixAI logo
RemixAI
RemixAI provides you personalized guidance as you build. It can break down concepts, answer questions about blockchain technology and assist you with your smart contracts.

AI Beta
Select context and ask me anything!

        if (isHigher && nextNumber > currentNumber) {
            lastResult = "You guessed correctly! It was higher.";
        } else if (!isHigher && nextNumber < currentNumber) {
            lastResult = "You guessed correctly! It was lower.";
        } else if (nextNumber == currentNumber) {
            lastResult = "It was equal! No winner this round.";
        } else {
            lastResult = "Wrong guess!";
        }

        // Update current number for next round
        currentNumber = nextNumber;

        return lastResult;
    }

    // View function to get the current state
    function getGameState() public view returns (uint256, string memory, address) {
        return (currentNumber, lastResult, lastPlayer);
    }

    // Internal pseudo-random generator (for testing only!)
    function _random() internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, msg.sender))) % 100;
    }
}
