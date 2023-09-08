//contract/firdaus.sol
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
// ownable berfungsi untuk kita mengatur fungsi fungsi kita oleh owner

contract firdaus is ERC721Enumerable,Ownable{
uint256 public constant MAX_SUPPLY =20;
string private _baseTokenURI;

constructor() ERC721("firdaus","SAL"){

}

function _baseURI() internal view virtual override returns (string memory){
    return _baseTokenURI;
}

function setBaseURL(string calldata baseURI_) external onlyOwner{
    _baseTokenURI = baseURI_;
}
 
function mint(uint256 quantity_) external payable {
    require(totalSupply() + quantity_ <= MAX_SUPPLY, 'Max supply sudah terpenuhi');
    
    for(uint256 i = 1;i <= quantity_;i ++){
        _safeMint (msg.sender, totalSupply() + 1);
    }

}
}
