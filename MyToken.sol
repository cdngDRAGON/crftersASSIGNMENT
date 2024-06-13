// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables
    string public name = "VishwaGuru";         // Token Name
    string public symbol = "DRGN";           // Token Abbreviation
    uint256 public totalSupply;             // Total Supply

    // Mapping from address to balance
    mapping(address => uint256) public balances;

    // Mint function
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
// check README.md for detailed desricption of the above code.
