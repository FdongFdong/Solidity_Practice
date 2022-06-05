//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleMappingExample {
    mapping(uint256 => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;

    // 매핑은 mapping 키워드로 선언한다.
    // 배열처럼 엑세스 되지만 한 가지 주요 이점이 있다. 모든 키/값 쌍은 기본값으로 초기화된다.

    function setValue(uint256 _index) public {
        myMapping[_index] = true;
    }

    // 해당 인덱스를 true로 설정한다.

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }
}
