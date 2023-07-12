pragma solidity ^0.6.4;

contract Bank{
    uint256 public balance;

    constructor () public{
        balance =0;
    }

    function getBalance() public view returns (uint256){
        if (balance == 0) {
        return "Your Balance = Rs 0.00";
    }
        return balance;

    }
    

    function withdrawal(uint256 amount) public{
        require(balance >= amount);
        balance = balance-amount;


    }

    function deposit(uint256 amount) public{
        balance = balance+amount;
    }
}