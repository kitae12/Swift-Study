import UIKit

// Control Flow

// for
let name = "anna"

for char in name {
    print(char)
}

let number = "1234567"

for num in number {
    print((Int(String(num)) ?? 0) * 100)
}

let names = ["Kim", "Lee", "Park"]

for name in names {
    print(name)
}

let numberOfLegs = ["ant" : 6, "dog" : 4 ]

for dic in numberOfLegs {
    print(dic)
}

for index in 0...5 {
    print(index)
} // 0~5 , 0..<5 : 0~4


// while
var a = 0

while a < 10 {
    a = a + 1
    print("계속 실행")
}


// switch
// 조건에 케이스를 만들어서 분기
let b = "e"

switch b {
case "b":
    print("b")
    
case "c", "d", "e":
    print("c or d or e")
    
default:
    print("other")
}


let f = 99

switch f {
case 0...50:
    print("grade : C")
    
case 51...99:
    print("grade : B")

case 100:
    print("grade : A")
    
default:
    print("other")
}
