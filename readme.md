# 🧾 Simple Wallet Smart Contract

A basic Ethereum smart contract that functions as a secure personal wallet. Written in Solidity, it allows anyone to deposit ETH, while only the owner (deployer) can withdraw funds. It includes key smart contract concepts like access control, event logging, and fallback functions.

---

## 🚀 Features

- ✅ Accept ETH deposits via function calls or direct transfers
- 🔒 Owner-only withdrawals
- 🔎 Check wallet balance anytime
- 📩 Receive and fallback functions for handling ETH transfers
- 🧠 Core Solidity concepts: `payable`, `receive`, `fallback`, `require`, modifiers
- 📜 Events for transparent logging of deposits and withdrawals

---

## 🛠 Technologies Used

- Solidity `^0.8.20`
- Ethereum Virtual Machine (EVM)
- Remix IDE for testing and deployment
- MetaMask and Goerli/Sepolia Testnet

---

## 📦 Contract Functions

### `constructor()`
Sets the contract deployer as the owner.

### `deposit() payable`
Allows any user to send ETH to the contract.

### `withdraw(uint amount)`
Allows only the owner to withdraw a specified amount.

### `getBalance() view`
Returns the current ETH balance in the contract.

### `receive() external payable`
Handles direct ETH transfers without data.

### `fallback() external payable`
Handles ETH transfers with unknown function calls.

---

## 🔐 Security Notes

- Only the owner can withdraw funds.
- Withdrawals fail if the balance is insufficient.
- Emits logs for all ETH-related actions.

---

## 🧪 How to Test

1. Open [Remix IDE](https://remix.ethereum.org)
2. Paste the code into a new file (`SimpleWallet.sol`)
3. Compile with `Solidity ^0.8.20`
4. Deploy using "Injected Web3" (e.g., MetaMask with Goerli or Sepolia)
5. Interact with functions like `deposit()`, `withdraw()`, and `getBalance()`

---

## 📜 License

MIT License

---

## 🧠 Author

**Muhammed Hilmi KT**  
Web3 Enthusiast | Solidity Developer

Connect with me on [LinkedIn](https://www.linkedin.com/in/hilmi-kt)
