//SPDX-License-identifier: MIT
pragma solidity ^0.8.13;

// Using bytes4(keccak256(bytes(_func = "transfer(address,uint256)");

contract FunctionSelector{

    function getSelector(string memory _func) external returns (bytes4){
    return bytes4(keccak256(bytes(_func)));
}
}

contract Receiver{

    event Log(bytes data);

    function transfer(address _sender,uint amount) external {
        emit Log(msg.data);
    }

    //0xa9059cbb---function selector in 4 bytes 
    //0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc4 -- _sender 
    //0000000000000000000000000000000000000000000000000000000000000309 -- amount in hex
}