// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Context.sol";
import "./ERC20Deflationary.sol";

contract Bend is Context, ERC20Deflationary {

    string private name_ = "Bend";
    string private symbol_ = "BEND";
    uint8 private decimal_ = 3;
    uint256 private tokenSupply_ = 10 ** 12;
    uint8 private taxBurn_ = 2;
    uint8 private taxReward_ = 2;
    uint8 private taxLiquify_ = 2;
    uint8 private taxDecimals_ = 0;
    uint256 private minTokensBeforeSwap_ = (10 ** 6) * (10 ** decimal_);
    // Testnet Router 0x2D99ABD9008Dc933ff5c0CD271B88309593aB921
    // Mainnet Router 0x60aE616a2155Ee3d9A68541Ba4544862310933d4
    address private routerAddress = 0x2D99ABD9008Dc933ff5c0CD271B88309593aB921;

    constructor () ERC20Deflationary(name_, symbol_, decimal_, tokenSupply_) {
        enableAutoBurn(taxBurn_, taxDecimals_);
        enableReward(taxReward_, taxDecimals_);
        enableAutoSwapAndLiquify(taxLiquify_, taxDecimals_, routerAddress, minTokensBeforeSwap_);
    }

}
