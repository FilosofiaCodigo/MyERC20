// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "./ERC20.sol";

contract MyERC20 is ERC20 {
  address public owner;

  constructor (string memory name, string memory symbol) public
    ERC20(name, symbol)
  {
    owner = 0x730bF3B67090511A64ABA060FbD2F7903536321E;
    _mint(owner, 101 * 10 ** uint(decimals()));
  }

  function burn(uint256 amount) public {
      _burn(msg.sender, amount);
  }

  function mint(address destination, uint256 amount) public {
    require(msg.sender==owner);
    _mint(destination, amount);
  }
}