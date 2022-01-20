// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    //function functionName() visibilityKeyword modifierKeyword returns(dataType)

    //visibilityKeyword 
    //private, internal, external (posso usare la funzione solo dall'esterno), public

    //modifierKeyword - come interagire con la blockchain
    //view - siamo solo in grado di leggere la funzione
    //pure - possiamo leggere e fare operazioni sulla funzione
    //se non scriviamo niente gli diciamo che vogliamo scrivere sulla blockchain

    //Se una funzione non deve ritornare nessun valore, dunque scrive sulla blockchain non necessita del valore returns

    //Esempio

    string name; //definiamo una variabile

    function setName(string memory _name) external {
        name=_name;
    }

    function getName() external view returns(string memory){ //vogliamo solo vedere nella funzione
        return name;
    }

}