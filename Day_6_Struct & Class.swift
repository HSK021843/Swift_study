// 클래스 vs 스트럭트

// 변수: 값을 담을 수 있는 공간
// 상수: 값을 담을 수는 있지만 바꿀 수는 없는 공간
// 모델: 이름, 영상, URL, 조회수 등을 한데 모아두는 것 -> 관리의 용이성을 위해 데이터를 한데 모아 모델화함
// 데이터 모델을 담는 방식이 클래스와 스트럭트 -> 데이터 묶기

// 유투브(데이터) 모델 - struct / 구조체
struct YoutubeStruct {
    var name : String
    var subscribersCount : Int
}

var channel = YoutubeStruct(name: "Name", subscribersCount: 99999)

var channelClone = channel

print("========== Struct ==========")
print("값 넣기 전 channelClone.name : \(channelClone.name)")

channelClone.name = "NewChannel"
print("값 넣기 후 channelClone.name: \(channelClone.name)")
print("값 넣기 후 channel.name: \(channel.name)")

// 값 수정된 후에 channel과 channelClone의 값을 비교하면 서로 다르다 -> 값을 복사하므로 서로의 값에 영향 X

print("========== Class ==========")
// 클래스 - 구조체처럼 데이터 덩어리
// 생성자 필요! -> 메모리에 올리기 위해서
struct YoutubeClass {
    var name : String
    var subscribersCount : Int

    // 생성자 넣기 -> 메모리에 올린다
    // 외부에서 넘겨받을 데이터를 작성해야됨
    // 외부에서 받는 데이터를 사용하려면 self.변수명 = 외부 데이터 변수명
    // 데이터의 이름을 사용하지 않으려면 _ 사용
    // init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣고, 그 값을 가지는 객체(object)를 만들 수 있다.
    init(name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var Another_channel = YoutubeClass(name: "Another Name", subscribersCount: 99999)

var Another_channel_Clone = Another_channel
print("값 넣기 전 Another_channel_Clone: \(Another_channel_Clone.name)")

Another_channel_Clone.name = "New_Name"
print("값 넣은 후 Another_channel_Clone: \(Another_channel_Clone.name)")
print("값 넣은 후 Another_channel: \(Another_channel.name)")


// struct: 복사의 개념 -> 한쪽에 변경/훼손되도 다른 쪽은 영향 X
// class: 서로 연결되어 있음 -> 한쪽이 변경/훼손되면 다른 쪽도 영향있음
// 즉, struct는 서로 다른 공간을 참조, class는 서로 같은 공간을 참조