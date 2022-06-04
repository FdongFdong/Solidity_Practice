pragma solidity ^0.5.13;

// 매개변수 앞에 _ 바는 스타일 가이드에는 없는 규칙이다.
// 해당 규칙은 자바스크립트 같은데서 사용해도 보기 편한 규칙이다.

contract WorkingWithVariables {
    uint256 public myUint;

    // uint의 기본 값은 0
    function setMyUint(uint256 _myUint) public {
        myUint = _myUint;
    }

    bool public myBool;

    // bool의 기본 값은 false
    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    uint8 public myUint8;

    function incrementUint() public {
        myUint8++;
    }

    function decrementUint() public {
        myUint8--;
    }

    // uint8의 기본 값은 0이다. 0~255 범위를 가지고 있다. 0 - 1을 하면 255이다.
    // 정수를 다룰땐 조심해야한다. 경고나 오류 없이 순환하기 때문이다.
    // 솔리디티에서는 2의 8승을 2**8로 나타낸다
    // 각 크키가 다른 이유는 거의 가스 비용 때문이다.
    address public myAddress;

    // address의 기본값으로 주소 0이 부여된다. 20바이트가 들어있음
    function setAddress(address _address) public {
        myAddress = _address;
    }

    function getBalanceOfAddress() public view returns (uint256) {
        return myAddress.balance;
    }

    // view 키워드는 대충 읽기 전용 함수라는 것을 의미한다.
    // wei의 양으로 출력된다.
    //eth는 wei의 10의 18승이다.
    //wei는 가장 작은 단위
    // 주소는 멤버함수가 있어서 .transfer() .send() .call.value() .delegatecall()... 등이 있다.
    // 주소는 항상 balance 라는 멤버를 가지고 있다. 해당 계정의 원장에 저장된 잔고를 wei로 보여준다.

    string public myString = "Hello World";

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
    //문자열은 사실 동적 크기 바이트 배열이다. 바이트배열이 utf-8로 변환될 뿐이다.
    // 바이트 배열은 길이와 인덱스가 있어서 특정 인덱스에 엑세스 할 수 있다. 하지만 문자열은 그런 기능이 없다.
    // 문자열과 바이트의 차이점은 바이트는 raw data를 보관하기 위한것, 해시에도 사용할 수 있고 입력될 다른 데이터에도 사용할 수 있다.
    //문자열은 utf-8데이터를 저장하기 위함
    // 문자열로 작업하는 방법은 외부의 이벤트라던가 아니면 블록체인 자체의 외부에 저장할 수도 있다. 블록체인에 문자열만 저장해서 외부의 문자열이 맞는지 확인만 하는 방법
    //솔리디티에서 문자열로 작업하는 건 비용이 상당히 든다. 가스비
    //문자열은 다루기 힘들다. 검색할 수도 없고 연결할 수도 없다.
    //초기값으로 아무것도 주지않으면 아무것도 출력되지 않음
    //저장 될 변수의 위치를 정확히 입력해줘야한다. memory, storage

    // 솔리디티는 모든 공개 변수를 위해 getter()함수를 생성한다.
    // getter 함수는 변수 자체와 똑같은 이름을 가진다.
}
