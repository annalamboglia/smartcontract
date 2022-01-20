// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    //if statement
    string public output;
    string valueToCheck="pizza";

    function ifStatement(string memory value) external returns(string memory){
        if(keccak256(abi.encodePacked(value))==keccak256(abi.encodePacked(valueToCheck))){
            output="buon appetito";
        }
        else{
            output="sei a dieta?";
        }
        return output;
    }

    uint public sum;

    //for
    function forLoop(uint end) external returns(uint){
        for(uint i=0; i<end; i++){
            sum=sum+1;
        }
        return sum;
    }

    //while
    function whileLoop(uint end) external pure returns(string memory) {
        uint j=0;
        while (j<end){
            j=j+1;
        }
        return "done";
    }



}