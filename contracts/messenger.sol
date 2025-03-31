//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract BlockchainMessenger {

    uint public changeCounter;

    //msg.sender is the account that deployed the contract
    address public owner = msg.sender; 

    string public message;

    //msg.sender is the account executing the contract, if it's the same as deployer if statement is satisfied
    function updateMessage(string memory _newMessage) public {
        if (msg.sender == owner) {
            message = _newMessage;
            changeCounter++;
        }
    }
}
