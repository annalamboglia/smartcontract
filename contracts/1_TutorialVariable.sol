// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TutorialVariable {

    //Variabili a dimensione fissa
    bool status; //true o false
    uint price; 
    address indirizzo; //Indirizzo di un contratto o di un utente 
    bytes32 bytesVariable; //dimensione di 32

    //Variabili a dimensione non fissa
    string name;
    bytes bytesVariable2;
    uint[] vettore; //vettori
    mapping(uint => string) dizionario; //funzione che prende all'interno una quantità e viene associata ad essa una scritta Una sorta di dizionario in python

    //variabili definite ad-hoc simili alle struct in c
    struct Persone{
        string name;
        string surname;
        uint age;
    }
    enum Status{
        ON,
        OFF
    } //scegli delle opzioni definite all'interno di essa
    //Potrei accedere con Status.ON o Status.OFF

    //Concetto di visibility

    uint private fede=10; //Private può essere usata solamente all'interno dello smart contract in cui è contenuta
    uint internal variable; //Può essere utilizzata con tutti gli smart contract che interagiscono con questo ad esempio per l'ereditarietà
    uint public variable2; //Può essere usata da tutti



}