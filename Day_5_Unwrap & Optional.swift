// Unwrap 옵셔널 변수

// 옵셔널?
// 값이 있는지 없는지 모르는 상태
// 선언방법
// nil은 값이 없음을 의미
var someVar : Int? = nil

if someVar == nil {
    someVar = 90 // 값이 들어가도, 실제로는 Optional(90) 형태로 출력됨
}

print("someVar: \(someVar)") // Optional(90)이라 출력됨

// 언랩핑?
// 감싸져 있는 것을 벗기는 것
// 즉, 옵셔널 값에서 옵셔널을 없애는 것
if let otherVar = someVar { // someVar에 값이 있다면, otherVar에 값을 넣는다 -> otherVar은 옵셔널이 아니게 됨(값만 가지게 됨)
    print("언래핑 -> 값 존재: \(otherVar)") // 90이라 출력됨
} else {
    print("값 없음")
}