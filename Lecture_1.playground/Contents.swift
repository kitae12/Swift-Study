import UIKit

// var
// let
// type Annottations
// Bool
// Tuples

var str: String = "Hello, playground"

let str2: Int = 111

var screenHeight: Float = 400

/*
print(str)
print(str2)
*/

var isOpen = false

if !isOpen{
    print(str)
}
else{
    print(str2)
}



var topTitle = ("메인화면", "mainIcon.png")

topTitle.0
topTitle.1

// http status code
var httpError = (statusCode: 404, description: "not found")

httpError.statusCode
httpError.description

print(httpError.statusCode)
print(httpError.description)
