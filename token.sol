pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FractionalizedERC20 is ERC20 {
    uint256 public totalShares;
    mapping(address => uint256) public shareBalance;

    constructor(string memory _name, string memory _symbol, uint8 _decimals) ERC20(_name, _symbol) {
        _setupDecimals(_decimals);
    }

    function mint(address _recipient, uint256 _shares) public {
        totalShares += _shares;
        shareBalance[_recipient] += _shares;
        _mint(_recipient, _shares);
    }

    function transfer(address _recipient, uint256 _shares) public returns (bool) {
        require(_recipient != address(0), "Cannot transfer to the zero address.");
        require(shareBalance[msg.sender] >= _shares, "Insufficient balance.");
        shareBalance[msg.sender] -= _shares;
        shareBalance[_recipient] += _shares;
        _transfer(msg.sender, _recipient, _shares);
        return true;
    }
}
