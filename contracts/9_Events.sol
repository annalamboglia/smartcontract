// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    //events
    //insieme di informazioni associati ad uno smart contract e che sono disponibili sulla blockchain
    //contengono delle informazioni associate o ad un evento o ad una attività che è avvenuta attraverso uno smart contract
    //e della quale possiamo vedere dei dettagli
    //event nome(proprietà)

    event Score (uint data, string player, string team);

    function goalScored(string memory _player, string memory _team) external {
        emit Score(block.timestamp, _player, _team); //serve per triggerare un evento
    }

    //Per vedere gli eventi bisogna scrivere
    //contract.getPastEvents('allEvents',{fromBlock:0})


}