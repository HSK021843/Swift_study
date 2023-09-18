// 클로저
// 메소드임 -> 메소드를 실행하는 것

// String을 반환하는 클로저 -> 이 자체가 실행된다.
let myName : String = {
    // myName으로 들어간다
    return "사람"
}()

print(myName)


// 매개변수를 가지는 클로저 -> String을 받아서 String을 보내는 것
// 정의
let myRealName = { (name: String) -> String in
    return "진짜 이름: \(name)"
}

// 다르게 표시하면
// let myRealName : (String) -> String = {(name: String) -> String in
//      return "진짜 이름: \(name)"}


// 실제 실행
myRealName("사람 이름")
// 진짜 이름: 사람 이름 형태로 출력됨


// 반환값 제공이 아니라, 로젝 처리를 할 수도 있음
let myRealNameLogic : (String) -> Void { (name: String) in
    print("사람 이름: \(name)")
}

myRealNameLogic("진짜 이름")


// 클로저 사용하면 -> 반환값만 / 원하는 반환값 / void 처리 가능