# Simple Message dApp

A small decentralized application (dApp) with a Solidity smart contract deployed on the Sepolia testnet and a web frontend that connects to MetaMask.

## Contract Address
**Sepolia:** `0xYOUR_CONTRACT_ADDRESS`
(Replace with your deployed address, and also paste it into `CONTRACT_ADDRESS` in `index.html`.)

## Contract Functions
| Function | Type | Description |
|---|---|---|
| `setMessage(string)` | Write | Stores a new message and increments the counter |
| `getMessage()` | Read | Returns the current message |
| `getCount()` | Read | Returns how many times the message was changed |

## Setup Instructions
1. Install the MetaMask browser extension and switch to the **Sepolia** test network.
2. Get free Sepolia test ETH from a faucet.
3. Open [Remix IDE](https://remix.ethereum.org), paste `SmartContract.sol`, and compile with Solidity 0.8.20+.
4. In the Deploy tab, choose **Injected Provider - MetaMask**, enter an initial message in the constructor field, and deploy.
5. Copy the deployed contract address and paste it into `index.html`.
6. Open `index.html` in a browser (or use the VS Code Live Server extension).
7. Click **Connect MetaMask**, then test the read and write buttons.

## Technologies
- Solidity, Remix IDE, MetaMask, Sepolia testnet
- HTML, CSS, JavaScript, ethers.js v6

## Screenshots
See the `screenshots/` folder:
1. Contract deployment in Remix
2. Wallet connected in the UI
3. Transaction result after saving a message
