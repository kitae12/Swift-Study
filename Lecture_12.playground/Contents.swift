import UIKit


// Initializer
//

class MyInfo {
    var name: String
    var myId: String
    var age = 0
    var isAdult: Bool
    
    // designated initializer
    init(n: String, id: String) {
        self.name = n
        self.myId = id
        self.isAdult = (age > 19) ? true : false
    }
    
    /*
    init() {
        self.name = ""
        self.myId = ""
        self.isAdult = (age > 19) ? true : false
    }
    */
    
    init(id: String) {
        self.name = ""
        self.myId = ""
        self.isAdult = (age > 19) ? true : false
    }

    // convenience initializer
    convenience init() {
        self.init(n: "", id: "")
    }

}


var myInfo1 = MyInfo(n: "Kim", id: "abcd")

myInfo1.myId
myInfo1.name




import UIkit

// Deinitialization

var a: Int? = 10
a = nil

class Game {
    var score = 0
    var name = ""
    var round: Round?
    
    init(){
        print("game init")
    }
    deinit {
        print("game deinit")
    }
             
}

class Round {
    var gameInfo = ""
    var lastRound = 10
    var roundTime = 20
}

var game: Game? = Game()
var round: Round? = Round()
round?.gameInfo = game
game?.round = round

