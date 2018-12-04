pragma solidity ^0.5.1;

import "../token/ERC20/IERC20.sol";
import "../crowdsale/emission/AllowanceCrowdsale.sol";
import "../crowdsale/validation/TimedCrowdsale.sol";

/**
 * This is a simple crowdsale for a token that has been created already.
 * For Remix and Etherscan use the flat version of this file.
 * 
 * rate = Number of token units a buyer gets per wei
 * Formula is rate = (number of tokens received per ethereum) * (10 ** decimals used by token) / (10 ** 18)
 * eg if the token is using 18 decimals and we want 1000 tokens paid per ethereum received
 * so rate = 1000 * (10 ** 18) / (10 ** 18) = 1000
 *
 * wallet = Address where collected funds will be forwarded to in quotes eg "0x7f9ACC29Cff370b4BE7a0fB7900c0A9381f2351c"
 * token = Contract address of the token being sold in quotes
 * tokenWallet = Address holding the tokens, which has approved allowance to the crowdsale in quotes
 * openingTime = Crowdsale opening time in unix epoch seconds eg 1543894840
 * closingTime = Crowdsale closing time in unix epoch seconds eg 1546137640
 *
 * After creation of this contract the address of the token must give approval to this contract to sell the tokens.
 * IERC20(token).approve(crowdsale_contract_address, token_amount);
 */

contract AllowanceCrowdsaleSample is Crowdsale, AllowanceCrowdsale, TimedCrowdsale {
    constructor (uint256 rate, address payable wallet, IERC20 token, address tokenWallet, uint256 openingTime, uint256 closingTime)
        public
        Crowdsale(rate, wallet, token)
        AllowanceCrowdsale(tokenWallet)
        TimedCrowdsale(openingTime, closingTime)
    {}
}