ragma solidity 0.8.20;

contract Time{
   function getTime(uint time) public view returns(uint) {
    if (time > block.timestamp){
        return time + 1 hours + 20 minutes + 30 seconds;
    }
    else {
        return 0;
    }
   }
}
