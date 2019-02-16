pragma solidity ^0.5.0;
import "zos-lib/contracts/Initializable.sol";

contract Fundem is Initializable {
    address private owner;
    address[] public users;
    mapping(address => address) public userToContract;

    function initialize () initializer public {
        owner = msg.sender;
    }

    function createUser (address _userAddress) public {
        userToContract[msg.sender] = _userAddress;
        users.push(_userAddress);
    }

    function getUserCount () public view returns (uint) {
        return users.length;
    }

    function getUserAddress (uint _index) public view returns (address) {
        return users[_index];
    }

    function getUserContractAddress () public view returns (address) {
        return userToContract[msg.sender];
    }
}
