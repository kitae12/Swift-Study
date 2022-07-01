import UIKit

// Class

class Myinfo {
    
    init(gender: GenderType) {
        self.genderType = gender
    }
    
    var genderType: GenderType
    
    enum GenderType {
        case male
        case female
    }
        
    var name = ""
    var age: Int = 0
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}



// 참조

var myInfo = Myinfo(gender: .female)
myInfo.genderType = .male
myInfo.genderType

myInfo.age = 20

var myInfo2 = myInfo
myInfo.age = 100

var myInfo3 = myInfo2
myInfo3.age = 200

myInfo.age
myInfo2.age
myInfo3.age


// Class - Inheritance
// 상속
/*
class Soccer {
    var homeScore = 0
    var awayScore = 0
    func presentScore() -> String {
        return homeScore.description + " : " + awayScore.description
    }
}

class Baseball {
    var homeScore = 0
    var awayScore = 0
    func presentScore() -> String {
        return homeScore.description + " : " + awayScore.description
    }
}
*/

class GameInfo{
    var homeScore = 0
    var awayScore = 0
    func presentScore() -> String { // final 붙이면 override 사용 불가
        return homeScore.description + " : " + awayScore.description
    }
}

class Soccer: GameInfo {

}

class Baseball: GameInfo {
    override func presentScore() -> String {
        return homeScore.description + " 대 " + awayScore.description
    }
}


let soccer = Soccer()
soccer.awayScore = 1
soccer.homeScore = 2
soccer.presentScore()

let baseball = Baseball()
baseball.awayScore = 12
baseball.homeScore = 13
baseball.presentScore()
