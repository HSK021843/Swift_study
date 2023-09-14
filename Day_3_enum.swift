// enum: 타입을 나누는 것


// 카테고리가 학교 -> 초, 중, 고
// 방법 1
enum School {
    case elementary
    case middle
    case high
}

// 방법 2
enum School_Another_case {
    case elementary, middle, high
}

// var: 변수
// let: 상수
// enum은 상수 사용

let yourSchool = School.high
print("yourSchool: \(yourSchool)")
print("yourSchool: ", yourSchool) // 값이 1개일 때


// 값이 있는 enum인 경우, '변수 : 타입' 형태로 명시 가능
enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade)")
// enum의 값을 가지고오고 싶다면
print("yourGrade : \(yourGrade.rawValue)")

// enum의 값을 가져오는 다른 방법?
let yourGrade_Raw = Grade.second.rawValue
print("yourGrade : \(yourGrade_Raw)")


// 이름을 정해서 값 가져오기
enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)

    func getName() -> String {// -> 을 이용해서 반환하는 값 표기
        switch self{
            case.elementary(let name): // 괄호 안에 let name으로 해도 되고
                return name
            case let .middle(name): // let은 case 뒤에 붙이고 괄호 안에는 name만 붙여도 된다
                return name
            case let .high(name): // 또한, :가 필요하다
                return name
        }
    }
}

let yourMiddlSchoolName = SchoolDetail.middle(name: "중학교")
print("yourMiddlSchoolName: \(yourMiddlSchoolName)")

// 이름을 정해서 값 가져올 때, 값만 가져오기 -> 함수 사용하기
print("yourMiddlSchoolName: \(yourMiddlSchoolName.getName())")