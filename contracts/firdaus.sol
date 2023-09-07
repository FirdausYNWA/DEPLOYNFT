//contract/firdaus.sol
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
    
import "@import "@openzeppelin/contracts/token/ERC721/extentions/ERC721Enumerable.sol";
    import "@import "@openzeppelin/contracts/token/access/ownable.sol";
// ownable berfungsi untuk kita mengatur fungsi fungsi kita oleh owner

contract firdaus is ERC721Enumerable,ownable{
uin256 public constant MAX_SUPPLY =20;

constructor{} ERC721{"firdaus","SAL"}{

}

fungtion mint{uin256 quantity_} external payable {
    require{totalSupply{} + quantity_ <= MAX_SUPPLY, 'Max supply sudah terpenuhi'};
    
    for

}
}
