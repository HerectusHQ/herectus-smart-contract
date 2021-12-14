// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * AntiWhale is special mechanism to avoid whales to dump big bags of BigD on market
 */
contract AntiWhale is Ownable {
    uint256 public startDate;
    uint256 public endDate;
    uint256 public limitWhale;
    bool public antiWhaleActivated;

    function activateAntiWhale() public onlyOwner {
        require(antiWhaleActivated == false);
        antiWhaleActivated = true;
    }

    function deActivateAntiWhale() public onlyOwner {
        require(antiWhaleActivated == true);
        antiWhaleActivated = false;
    }

    function setAntiWhale(uint256 _startDate, uint256 _endDate, uint256 _limitWhale) public onlyOwner {
        startDate = _startDate;
        endDate = _endDate;
        limitWhale = _limitWhale;
        antiWhaleActivated = true;
    }

    function isWhale(uint256 amount) public view returns (bool) {
        if (
            msg.sender == owner() ||
            antiWhaleActivated == false ||
            amount <= limitWhale
        ) return false;

        if (block.timestamp >= startDate && block.timestamp <= endDate)
            return true;

        return false;
    }
}