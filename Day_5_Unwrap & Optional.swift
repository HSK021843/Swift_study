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

// if let
if let otherVar = someVar { // someVar에 값이 있다면, otherVar에 값을 넣는다 -> otherVar은 옵셔널이 아니게 됨(값만 가지게 됨)
    print("언래핑 가능 -> 값 존재: \(otherVar)") // 90이라 출력됨
} else {
    print("값 없음 -> 언래핑 되지 않음") // 만약 값이 없는 경우(nil)이라면 이 부분이 실행됨
}

someVar = nil
// 만약 someVar이 비어있다면? -> 기본값으로 어떤 값을 넣을지 할 수 있음
let myValue = someVar ?? 10
print("myValue: \(myValue)")

var firstVal : Int? = 30
var secondVal : Int? = 50

print("firstVal: \(firstVal)")
print("secondVal: \(secondVal)")

unwrap(parameter: firstVal) // 만약 parameter: 을 안 쓰려면 함수에서 _를 써주면 됨. 자세한 것은 41번줄로.
unwrap(parameter: secondVal)

// guard let
func unwrap(parameter: Int?) { // 만약 함수를 사용할 때 parameter:을 안 쓰고 싶으면 unwrap(_ parameter: Int?) 라고 써야 함
    print("unwrap() called")
    // 값이 없으면 return -> 함수를 지나가는 개념으로 생각하면 됨
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)") 
}


// 즉, 언래핑 방법은 if let, guard let이 있음
// nil 변수에 기본값을 넣으려면 ??을 사용한다.