# 🎲 Higher or Lower – Simple Solidity Guessing Game

Welcome to **Higher or Lower**, a fun and beginner-friendly Solidity smart contract game!  
This project helps you understand how to build, deploy, and interact with a simple **on-chain guessing game** using **Ethereum smart contracts**.

---
<img width="1920" height="1200" alt="celosepo" src="https://github.com/user-attachments/assets/6e056ecf-0ebc-48a4-a47a-8dd287721a32" />

---
## 📖 Project Description

**Higher or Lower** is a simple smart contract where players guess if the next randomly generated number will be **higher** or **lower** than the current one.

This project is perfect for Solidity beginners who want to learn:
- How to generate pseudo-random values on-chain
- How to store and update game state
- How to return results and manage simple interactions between players and the blockchain

---

## 💡 What It Does

1. The contract starts with a random number between `0` and `99`.  
2. A player calls the `guess()` function:
   - `true` → guess higher  
   - `false` → guess lower  
3. The contract generates a new random number.  
4. If your guess is correct, you win that round!  
5. The contract updates the number for the next player.

---

## ✨ Features

- 🔢 Random number generation (for learning purposes only)
- 🧠 Simple logic for higher/lower guesses
- 🧾 Public state variables to check game status
- 👤 Tracks the last player and their result
- 💬 Beginner-friendly code with clear comments

---

## 🔗 Deployed Smart Contract

**Contract Address:** `https://celo-sepolia.blockscout.com/address/0x0660034Ff26B01088d6d2390586c6396A8FdeFAd`

---

## 🧰 Smart Contract Code

```solidity
//paste your code
<img width="1920" height="1200" alt="celosepo" src="https://github.com/user-attachments/assets/4017e49b-0326-4071-b800-21a7967428de" />

