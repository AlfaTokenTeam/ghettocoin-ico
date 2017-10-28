pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract GHETTOCOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function GHETTOCOIN(address _owner)  UpgradeableToken(_owner) {
    name = "GHETTOCOIN";
    symbol = "GTCN";
    totalSupply = 50000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}