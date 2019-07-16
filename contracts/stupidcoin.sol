pragma solidity >=0.4.22 <0.6.0;

contract StupidToken {
    address creator;
    uint256 public supply;
    string public name;
    
    constructor(string memory _name, uint256 _initialSupply) public {
        creator = msg.sender;
        name = _name;
        supply = _initialSupply;
    }
    
    mapping (address => uint256) public balances;
    
    function mint(address _to, uint256 _amount) external onlyCreator {
        if (supply >= _amount) {
            balances[_to] += _amount;
            supply -= _amount;    
        }
    }
    
    function transfer(address _from, address _to, uint256 _amount) external onlyBy(_from) {
        if (balances[_from] >= _amount) {
            balances[_from] -= _amount;
            balances[_to] += _amount;
        }
    }
    
    modifier onlyCreator() {
        require(msg.sender == creator);
        _;
    }
    
    modifier onlyBy(address _from) {
        require(msg.sender == _from);
        _;
    }
}