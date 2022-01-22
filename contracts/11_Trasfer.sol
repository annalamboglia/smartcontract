// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    //send Eth TO

    //payable -> ha la possibilità di trasferire degli eth da un account ad un altro
    function fundContract() external payable {  //Devo passare gli eth come input però in wei

    }
    
    function getBalance() public view returns(uint){
        return address(this).balance; //Prendi l'address dell'account e dimmi il suo bilancio
    }


    //sent Eth FROM
    //funzioni:
        //transfer invio dei soldi ma se la transazione non va a buon fine, crusha ritorna un errore e viene interrotta (2300 gas di default)
        //send invio dei soldi ma se la transazione non va a buon fine, ritorna un valore booleano (True o False) 
        //e poi con questa variabile posso gestire l'errore (2300 gas di default)
        //call fa la stessa cosa di send, ma è possibile assegnare il valore massimo di gas per effettuare la funzione
        //LO STANDARD IMPONE LA FUNZIONE CALL PER TRASFERIMENTI

    function trasferAmount(address payable _recipient, uint _amount) external payable {
        _recipient.transfer(_amount);
    }

    
    function callAmount(address payable _recipient, uint _amount) external payable {
        (bool success, bytes memory data) = _recipient.call{value:_amount}(""); //La funzione torna 2 valori, i "" sono per il messaggio di uscita
        require(success,"Transaction Failed!"); //Per vedere success se è andata a buon fine

    }

}