// foreach

// 컬렉션: 데이터를 모아둔 것
// 컬렉션 종류: 배열, 집합, 딕셔너리
// 배열
var myArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// 기본형
for item in myArray {
    print("item: \(item)")
}

// 조건 넣기(예시)
for item in myArray where item > 5 {
    print("item: \(item)")
}

for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}