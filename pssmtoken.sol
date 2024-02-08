/**
 *Submitted for verification at BscScan.com on 2023-07-06
*/

// There we wait for the revelation, it will be announced
// https://t.me/+e5K7axdj-ho1YjRk
// please join for free and enjoy with time to do something big

/*

FROM ZERO TO HERO !!!!

*/






pragma solidity 0.8.18;
// SPDX-License-Identifier: MIT

contract Simple_MementoCodi_X1 {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    
    constructor(string memory _name, string memory _symbol, uint8 _decimals, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }
    

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_value >= 0, "Transaction amount insufficient minimum allowed.");
       // require(_value <= maxTransactionAmount, "Transaction amount exceeds maximum allowed.");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance.");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
    
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value >= 0, "Transaction amount insufficient minimum allowed.");        
        //require(_value <= maxTransactionAmount, "Transaction amount exceeds maximum allowed.");
        require(balanceOf[_from] >= _value, "Insufficient balance.");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance.");
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }
    
    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }


}
