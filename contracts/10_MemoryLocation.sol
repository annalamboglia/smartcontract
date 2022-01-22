// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    //Memorie

    //Storage
        //variabile salvata nella blockchain 
        //non può essere cancellata ma possiamo conoscere il suo valore
        //Esempio storage arrays, è un valore di default non c'è bisogno di keyword

    //Memory
        //Non sono salvate all'interno della blockchain
        //Sono salvate nella Virtual Machine e vivono finché la funzione viene eseguito
        //Memoria temporanea
        //esempio variabili della funzione

        //Stack
            //Tutte le variabili all'interno della funzione vengono salvate nella memoria stack
        
        //Calldata
            //possono essere utilizzate all'interno di una funzione che ha una visibility
            //di tipo external o public
            //si usa al posto di memory quando la funzione è di tipo external o public



}