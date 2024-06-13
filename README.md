# Final Assesment for ETH Proof Beginner 

This is description of output and its code for the challenge in the final assesment for the ETH Proof  Beginner. 

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract is developed to mint some tokens by using the mint function and use them by using the burn function. Balance is reduced every time we burn some tokens . 

## Getting Started

### Installing

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

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

### Executing program
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

From the account option click on a new account with full 100 ether so you can monitor the gas used by your contract.
The mint and burn functions will take an address along with value seperated by comma.

You can copy the above account from the account you selected by clicking the copy icon and paste it in balnes mint and burn finction as parameters.

Run the function by giving some value(e.g. 50) in mint function. The total supply and balances will be updated now.

Burn some tokens by providing value in second parameter of the burn function.You can see that total supply remain unchanged but the balances will be updated.That was it!

Good Luck.

## Authors

Contributors names and contact info:
crftngDRAGON 



## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
