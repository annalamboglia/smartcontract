// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

//Variabili e funzioni speciali

//transaction tx
    //tx.gasprice (uint): gas price of the transaction
    //tx.origin (address payable): sender of the transaction (full call chain) //indirizzo di origine della transazione

//message msg 
    //msg.data (bytes calldata): complete calldata //contenuto del messaggio
    //msg.sender (address payable): sender of the message (current call) //Indirizzo del messaggio
    //msg.sig (bytes4): first four bytes of the calldata (i.e. function identifier) 
    //msg.value (uint): number of wei sent with the message //valore dei gwei

//blocks 
    //block.coinbase (address payable): current block miner’s address 
    //block.difficulty (uint): current block difficulty //difficoltà per validarlo
    //block.gaslimit (uint): current block gaslimit 
    //block.number (uint): current block number //numero del blocco
    //block.timestamp (uint): current block timestamp as seconds since unix epoch

//altre
    //blockhash(uint blockNumber) returns (bytes32): hash of the given block - only works for 256 most recent, excluding current, blocks
    //now (uint): current block timestamp (alias for block.timestamp)
    //gasleft() returns (uint256): remaining gas

    function getSummary() external view returns(address, uint, uint){
        return (msg.sender,block.number,tx.gasprice);

    }


}