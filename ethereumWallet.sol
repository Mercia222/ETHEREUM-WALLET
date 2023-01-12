// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ETHwallet{

    address payable public owner; 

    constructor(){
        owner = payable(msg.sender); 
    }


receive() external payable{}
    
    //create get balance function 

    function getBalance() public view returns(uint){
        return address(this).balance; 

    }

    //create withdraw function
    function withdraw(uint _amount) public{
        require(msg.sender == owner, "Thief, you are not the owner");

    //transfer method 
    //capturing the address of the person that owns this contract only
       payable(msg.sender).transfer(_amount); 
    }

    //in the case anybody can withdraw: 
    function anybodyCanwithdraw(uint _amount, address payable _to) public{
        
    _to.transfer(_amount); 
}


    }