pragma solidity ^0.5.13;

contract StartStopUpdateExample {
    address owner;
    bool paused;

    constructor() public {
        owner = msg.sender;
    }

    // 생성자. 배포중에 호출되는 함수
    // 계약 배포 중 딱 한번만 호출된다.
    // 컨트랙트를 배포한 사람을 owner 변수에 할당한다.
    function sendMoney() public payable {}

    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner, "You are not owner");
        require(paused == false, "Contract is paused");
        _to.transfer(address(this).balance);
    }

    // require가 거짓이면 예외를 발동시켜 현재 트랜잭션을 멈춥니다.
    // 롤백이 일어나며 블록체인에 반영되지 않는다.
    // 트랜잭션을 실행한 사람이 오너이면 통과

    function setPaused(bool _paused) public {
        require(msg.sender == owner, "You are not owner");
        paused = _paused;
    }

    // 스마트 컨트랙트 중지하는 함수

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner");
        selfdestruct(_to);
    }
    // 스마트 컨트랙트를 파괴하는 함수
}
