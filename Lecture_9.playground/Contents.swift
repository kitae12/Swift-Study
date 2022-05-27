import UIKit

// Enumerations

// enum
// 타입분류

/*
enum BookType {
    case fiction
    case comic
    case workbook
}


// var bookStyle = Booktype.fiction
var bookStyle:  BookType?
var books = [BookType]()

func saveBook(book: BookType) {
    books.append(book)
}

func loadBook (book: BookType) -> [BookType]{
    var tempBooks = [BookType]()
    
    for item in books {
        if item == book {
            tempBooks.append(item)
        }
    }
    return tempBooks
}


saveBook(book: .comic)
saveBook(book: .fiction)
saveBook(book: .workbook)
saveBook(book: .workbook)

books

loadBook(book: .workbook)
*/

// 타입분류 + 값

enum BookType {
    case fiction(title: String, price: Int, year: Int)
    case comic(title: String, price: Int, year: Int)
    case workbook(title: String, price: Int, year: Int)
}

var bookStyle:  BookType?
var books = [BookType]()

func saveBook(book: BookType) {
    books.append(book)
}

saveBook(book: .comic(title: "aaa", price: 5000, year: 2020))
saveBook(book: .comic(title: "bbb", price: 6000, year: 2021))
saveBook(book: .workbook(title: "ccc", price: 7000, year: 2022))
saveBook(book: .fiction(title: "ddd", price: 8000, year: 2023))

for book in books {
    
    if case let BookType.comic(title, _, _) = book {
        print("comic", title)
    }
    
    switch book {
    case let .comic(_, price, _):
        print(price)
    case let .fiction(title, _,  _):
        print(title)
    
    default:
        break
    }
}


