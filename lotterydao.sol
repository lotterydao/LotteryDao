pragma solidity ^0.4.11;
contract LotteryDao{

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

	mapping (address => uint256) balances;
	mapping (address => uint256) rewardPool;
	
	address public owner;
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    function LotteryDao() public { 
    }
	
    function balanceOf(address _owner) public constant returns (uint256 balance) {
		 return balances[_owner];
	}

    function transfer(address _to, uint256 _value) public returns (bool success) {
	    require(_value > 0 );
		require(balances[msg.sender] >= _value);
		balances[msg.sender] -= _value;
        balances[_to] += _value;
        Transfer(msg.sender, _to, _value);
        return true;
	}
	
	function ()public payable {
       buyToken();
    }
	
    function buyToken()public payable {
    }
	
    function withdraw()public returns (bool success) {
    }
	
	//banker  module
	function beBanker(uint128 lotteryType){
		//check msg.sender.balance
		
		//record
		
		//put finance to rewardPool
		
	}
	
	//betting module
	function betting(uint128 lotteryType,uint256 amount,uint8[] data){
		//check state
		
		//check data & amount
		
		//record bet message
		
	}
	
	//input data
	function setRewardData(uint128 lotteryType,uint8[] data){
		//platform setRewardData
		
		//Witness setRewardData
		
		//check address
		
		//check witness balance
		
		//drawing
	}
	
	function drawing(uint128 lotteryType){
		//check data
		
		//record
		
		//settle finance
	}
}