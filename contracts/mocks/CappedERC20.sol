pragma solidity ^0.5.0;

import "../token/ERC20/ERC20Detailed.sol";
import "../token/ERC20/ERC20Capped.sol";

contract YourCoin is ERC20Detailed, ERC20Capped {
    string private tokenname ="YourCoin"; //change to the name you want
    string private tokensymbol = "YOUR"; //change to the symbol you want
    uint256 private tokendecimal = 18; //18 is the most common value and is used by ethereum
    uint256 private tokencap = 10000000 * (10 ** tokendecimal); //change 10 million to your cap count

    constructor() ERC20Detailed(tokenname, tokensymbol, uint8(tokendecimal)) ERC20Capped(tokencap) public {}
}