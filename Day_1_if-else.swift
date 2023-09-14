// if-else

var isDarkmode : Bool = true

// 1) 조건문 기본형
if (isDarkmode == true) {
    print("다크모드입니다.")
} else {
    print("다크모드가 아닙니다.")
}


// 2) 1) 코드 변형
if (isDarkmode != true) {
    print("다크모드가 아닙니다.")
} else {
    print("다크모드입니다.")
}


// 3) 조건문 괄호 제거
if isDarkmode == true {
    print("다크모드입니다.")
} else {
    print("다크모드가 아닙니다.")
}


// 4) ==나 != 쓰지 않기 -> isDarkmode == true와 동일
if isDarkmode {
    print("다크모드입니다.")
} else {
    print("다크모드가 아닙니다.")
}


// 5) 4) 코드 변형 -> isDarkmode != true와 동일
if !isDarkmode {
    print("다크모드가 아닙니다.")
} else {
    print("다크모드입니다.")
}


// 6) 삼항연산자
var title1 : String = isDarkmode == true ? "다크모드입니다." : "다크모드가 아닙니다."
print("title: \(title1)")


// 7) 6) 코드 변형 -> == true부분 생략
var title2: String = isDarkmode ? "다크모드입니다." : "다크모드가 아닙니다."
print("title: \(title2)")


// 8) 7) 코드 변형 -> == false라면?
var title3: String = !isDarkmode ? "다크모드입니다." : "다크모드가 아닙니다."
print("title: \(title3)")