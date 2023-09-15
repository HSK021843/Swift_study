// for 반복문

// 0...5 -> range(범위)
// 0, 1, 2, 3, 4, 5

// 0..<5
// 0, 1, 2, 3, 4

// 기본형
for index in 0...5 {
    print("index: \(index)")
}

// 범위 쓸 때 부등호가 들어가면?
for index in 0..<5 {
    print("index: \(index)")
}

// where로 조건 붙이기
for index in 0..<5 where index % 2 == 0 {
    print("index: \(index)")
}

// 배열 입력하기
var randomInts: [Int] = [] // 배열 선언방법 1
var randomInts_Another: [Int] = [Int]() // 배열 선언방법 2

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100) // 무작위 수 생성
    randomInts.append(randomNumber) // 무작위 수 넣기
}

print("randomInts: \(randomInts)")