// 프로퍼티 옵저버

var myAge = 0 {
    willSet{
        print("값이 설정될 예정임. myAge: \(myAge)")
    }
    didSet{
        print("값 설정됨. myAge: \(myAge)")
    }
}

myAge = 10
myAge = 20

// willSet, didSet은 변경 불가능한 호출. 저 두가지로만 가능함