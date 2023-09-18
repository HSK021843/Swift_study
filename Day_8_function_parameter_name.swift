// 함수의 매개변수 이름
// 함수 생성시 매개변수 이름 지정 가능

// 함수, 메서드 정의
func myFunction(name: String) -> String { // name이라는 이름으로 받고, String으로 반환
    return "안녕하세요? \(name) 입니다."
}

// 함수, 메서드 호출(call)
myFunction(name: "이름")


// 함수 , 메서드 정의(다른 이름 사용하기)
func myFunctionSecond(with name: String) -> String { // name이라는 이름으로 받고, String으로 반환
    return "안녕하세요? \(name) 입니다."
}

myFunctionSecond(with: "다른사람")

// 함수 선언하려면
// func 함수명(파라미터) -> 반환 타입 {}
// 호출할 때 다른이름 쓰려면 -> 파라미터 앞에 with 등을 붙여준다.
// with 등을 붙이면, 처리 자체는 파라미터 명만 사용하지만, 호출할 때는 달라진다.


// 함수 , 메서드 정의(파라미터 이름 사용하지 않기)
func myFunctionThird(_ name: String) -> String { // name이라는 이름으로 받고, String으로 반환
    return "안녕하세요? \(name) 입니다."
}

myFunctionThird("또 다른 사람")
// _를 사용하면, 함수 호출시에도 파라미터만 쓸 수 있다.