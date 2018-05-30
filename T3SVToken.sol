pragma solidity ^0.4.21;

import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract T3SVToken is StandardToken {

  string public name = "Tier 3 Silicon Valley";
  string public symbol = "T3SV";
  uint public decimals = 18;
  uint public INITIAL_SUPPLY = 100000000 * (1 ether / 1 wei);

  /**
   * @dev Contructor that gives msg.sender all of existing tokens.
   */
   constructor() public {
     totalSupply_ = INITIAL_SUPPLY;
     balances[msg.sender] = INITIAL_SUPPLY;
     emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
   }
}
