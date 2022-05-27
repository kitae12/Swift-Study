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




