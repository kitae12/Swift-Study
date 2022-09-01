import UIKit

// Properties
//

class MyInfo {
    
    // sotred property
    var name = ""
    var age = 0
    
    // lazy stored property
    lazy var myProfiles = [UIImage(named: "n"), UIImage(named: "e"),
                      UIImage(named: "q"), UIImage(named: "s")]
    
    // computed property
    var isAdult: Bool {
        if age > 19 {
            return true
        }
        return false
    }
    
    // email -> 보안 -> 항상 암호화 된 값으로 사용한다.
    var _email = ""
    var email: String {
        get{
            return _email
        }
        set{
            _email = newValue.hash.description
        }
    }
}

let myInfo = MyInfo()

myInfo.age = 20
myInfo.name = "Park"
myInfo.myProfiles
myInfo.isAdult
myInfo.email = "abc@test.com"
myInfo.email

print(myInfo.age)


