pragma solidity >=0.4.22 <0.6.0;

contract login {
    address _name;
    string _password;
    
    constructor() public {
        _name = msg.sender;
        _password = "";
    }
    
    function setPassword(string memory password) public {
        if (msg.sender == _name){
            _password = password;
        }
        else {
            revert("permission denied");
        }
    }
    
    function getPassword() public view returns (string memory) {
        return _password;
    }
}
