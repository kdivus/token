// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20Capped, Ownable {
    constructor() ERC20("MyToken", "MTKN") ERC20Capped(100000) {
        _mint(msg.sender, 100000);
    }

    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }
}
