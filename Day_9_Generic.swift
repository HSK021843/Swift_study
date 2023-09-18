// 제네릭
// 어떤 자료형이라도 받을 수 있다.

struct MyArray<SomeElement> { // <>가 제네릭을 선언한다는 의미임

    // 제네릭을 담은 빈 배열
    var elements : [SomeElement] = [SomeElement]() // 프로퍼티, 형태 없는 SomeElement 만듬

    // _가 있으면 이름을 넣지 않아도 됨
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

struct Friend {
    var name: String
}

struct Coder {
    var name: String
}

// 배열에 넣고 출력하는 방법
var mySomeArray = MyArray(elements: [1, 2, 3]) // 배열에 무엇이든 넣을 수 있음
print("mySomeArray: \(myStringArray)")

var myStringArray = MyArray(["가", "나", "다"])
print("myStringArray: \(myStringArray)")

let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "철수_2")

var myFriendsArray = MyArray([friend_01, friend_02, friend_03])
print("myFriendsArray: \(myFriendsArray)")


// 결론: 제네릭은 무엇이든지 받을 수 있다.
// 제네릭은 보통 <T>라고 선언함(T로 사용)