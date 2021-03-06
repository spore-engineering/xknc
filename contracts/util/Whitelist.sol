pragma solidity 0.5.15;

import "@openzeppelin/contracts/ownership/Ownable.sol";

contract Whitelist is Ownable {
	mapping(address => bool) whitelist;
	event AddedToWhitelist(address indexed account);
	event RemovedFromWhitelist(address indexed account);

	function addToWhitelist(address _address) public onlyOwner {
		whitelist[_address] = true;
		emit AddedToWhitelist(_address);
	}

	function removefromWhitelist(address _address) public onlyOwner {
		whitelist[_address] = false;
		emit RemovedFromWhitelist(_address);
	}

	function isWhitelisted(address _address) public view returns (bool) {
		return whitelist[_address];
	}
}
