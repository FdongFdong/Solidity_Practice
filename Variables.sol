pragma solidity ^0.5.13;

contract WorkingWithVariables {
    uint256 public myUint;

    function setMyUint(uint256 _myUint) public {
        myUint = _myUint;
    }

    bool public myBool;

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
}

// 매개변수 앞에 _ 바는 스타일 가이드에는 없는 규칙이다.
// 해당 규칙은 자바스크립트 같은데서 사용해도 보기 편한 규칙이다.

// uint의 기본 값은 0
// bool의 기본 값은 false

// uint8의 기본 값은 0이다. 0~255 범위를 가지고 있다. 0 - 1을 하면 255이다.
// 정수를 다룰땐 조심해야한다. 경고나 오류 없이 순환하기 때문이다.
