# Blockchain Messenger

## Overview

Blockchain Messenger is a simple smart contract developed in Solidity that allows the owner of the contract to update a stored message on the Ethereum blockchain. The contract keeps track of how many times the message has been updated.

## Features

- **Owner-Only Message Update**: Only the account that deployed the contract (owner) has the permission to update the stored message.
- **Message Storage**: The contract stores a string message that can be updated by the owner.
- **Change Counter**: A counter that tracks the number of times the message has been updated.

## Contract Details

- **Solidity Version**: The contract is written in Solidity version 0.8.15.
- **License**: SPDX-License-Identifier: MIT.

## Functions

### `updateMessage`

```solidity
function updateMessage(string memory _newMessage) public
```

- **Description**: Updates the stored message to `_newMessage` if the caller is the owner of the contract.
- **Parameters**: 
  - `_newMessage`: A string representing the new message to be stored.
- **Modifiers**: 
  - `msg.sender == owner`: Ensures that only the owner can update the message.
- **Effects**: 
  - Updates the `message` state variable.
  - Increments the `changeCounter` by 1.

## State Variables

- `changeCounter`: A `uint` that keeps track of how many times the message has been changed.
- `owner`: An `address` representing the account that deployed the contract.
- `message`: A `string` storing the current message.

## Deployment

To deploy this contract:

1. Ensure you have a Solidity development environment set up
2. Compile the contract using Solidity version 0.8.15.
3. Deploy the contract using an Ethereum account. This account will be set as the `owner`.

## Usage

Once deployed, the owner can call the `updateMessage` function to change the stored message. The `changeCounter` will automatically increment with each update.
