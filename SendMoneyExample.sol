pragma solidity ^0.5.13;

contract SendMoneyExample {
    uint256 public balanceReceived;
    uint256 timeStamp;

    // 솔리디티에는 항상 트랜잭션이 진행되는 동안에도 사용할 수 있는 글로벌 오브젝트가 있다.
    // 그 중 하나가 message 오브젝트이다.
    function receiveMoney() public payable {
        balanceReceived += msg.value;
        timeStamp = block.timestamp;
    }

    // msg.value 값 안에는 해당 트랜잭션으로 전송된 금액이 wei로 들어 있다.
    // payable은 이더를 송금 받을 수 있게 됨. 사용하면 해당 컨트랙트에 잔고가 저장된다.

    function getBalnance() public view returns (uint256) {
        return address(this).balance;
    }

    // 잔고를 알려주는 함수

    function withdrawMoney() public {
        address payable to = msg.sender;
        // 해당 주소로 송금하기 위해선 payable을 넣어줘야함
        to.transfer(this.getBalnance());
    }

    // 트랜잭션을 보내는 사람에게 송금하는 함수
    // msg.sender안에는 이 스마트 계약을 호출한 주소가 들어있다.
    // 입금하는게 아닌 출금하는 함수는 payable 키워드를 사용할 필요 없음

    function withdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getBalnance());
    }
    // 전달받은 주소로 돈을 송금하는 함수
    // function withdrawMoneyTo(address payable _to) public {
    //     if (timeStamp + 1 minutes < block.timestamp) {
    //         _to.transfer(this.getBalnance());
    //     }
    // }

    // 전달받은 주소로 1분뒤 돈을 송금하는 함수
    //스마트 계약의 값을 업데이트해야 하는 경우(상태에 쓰기) 트랜잭션이 필요합니다. 값을 읽으면 호출이 완료됩니다. 거래 비용은 Ether(가스)이며 채굴해야 하므로 값이 반영될 때까지 시간이 걸리며 이는 나중에 보게 됩니다. 통화는 거의 무료이며 즉시 이루어집니다.
}
