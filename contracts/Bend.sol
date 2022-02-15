// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Context.sol";
import "./ERC20Deflationary.sol";

contract Bend is Context, ERC20Deflationary {

    string private name_ = "Bend";
    string private symbol_ = "BEND";
    uint8 private decimal_ = 4;
    uint256 private tokenSupply_ = 12 * 10**9 * 10**4;
    uint8 private taxBurn_ = 2;
    uint8 private taxReward_ = 2;
    uint8 private taxLiquify_ = 2;
    uint8 private taxDecimals_ = 0;
    uint256 private minTokensBeforeSwap_ = (10 ** 6) * (10 ** decimal_);

    address private routerAddress = 0x60aE616a2155Ee3d9A68541Ba4544862310933d4;

    constructor () ERC20Deflationary(name_, symbol_, decimal_, tokenSupply_) {
        enableAutoBurn(taxBurn_, taxDecimals_);
        enableReward(taxReward_, taxDecimals_);
        enableAutoSwapAndLiquify(taxLiquify_, taxDecimals_, routerAddress, minTokensBeforeSwap_);
    }

}
