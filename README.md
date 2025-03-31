# Blockchain Messenger 📡

This is a simple smart contract built on the Ethereum blockchain that allows users to send messages in a secure and decentralized manner. 

## Overview 🌐

The Blockchain Messenger contract enables users to update a stored message either by ownership or through a payment mechanism.

## Features ✨

- **Ownership-Based Message Update**: Only the owner of the contract can update the message without any payment.
- **Payment-Based Message Update**: Users can update the message by sending exactly 1 ether.

## Smart Contract Details 📜

### Contract Address

The contract can be deployed on the Ethereum blockchain. Make sure to keep track of the deployed contract address for future interactions.

### Functions 🔧

1. **updateMessageByOwnership**  
   - **Parameters**: 
     - `string memory _newMessage`: The new message to be set.
   - **Access**: Only callable by the owner of the contract.
   - **Effect**: Updates the message and increments the change counter.

2. **updateMessageByPayment**  
   - **Parameters**: 
     - `string memory _newMessage`: The new message to be set.
   - **Access**: Callable by any user.
   - **Effect**: Updates the message if exactly 1 ether is sent; otherwise, it refunds the sent value.

## Getting Started 🚀

To deploy and interact with the Blockchain Messenger contract, you will need:

- An Ethereum wallet
- A development environment
- Some test ether

### Deployment Steps

1. Clone the repository.
2. Open the contract in your development environment.
3. Compile the contract.
4. Deploy the contract to an Ethereum network.
5. Interact with the contract using the provided functions.

## License 📄

This project is licensed under the MIT License and should be used for educational purposes only.
