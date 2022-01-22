// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    //Mapping - simiili ai dizionari
    //key => value 
    //mapping(address => uint) age;

    //Create
    //Read
    //Update
    //Delete

    mapping(address => uint) public age;

    function assignAge(uint _age) external {
        age[msg.sender]=_age;
    }

    function getAge(address _sender) external view returns(uint){
        return age[_sender];
    }

    //Possono esserci anche dei nested mapping
    //mapping(address => mapping(address => uint)) user;

    //oppure array in mapping
    //mapping(address => uint[]) goals;


}