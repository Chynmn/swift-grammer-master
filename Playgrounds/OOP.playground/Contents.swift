import UIKit

class Book {
    var name: String
    var price: Int
    var company: String
    var author: String
    var pages: Int
    
    init(name: String, price: Int, company: String, author: String, pages: Int) {
        self.name = name
        self.price = price
        self.company = company
        self.author = author
        self.pages = pages
    }
}

var book1 = Book(name: "스위프트", price: 30000, company: "애플", author: "잡스", pages: 300)

var book2 = Book(name: "코틀린", price: 20000, company: "구글", author: "래리", pages: 200)


class Movie {
    var name: String
    var jenre: String
    var actor: String
    var director: String
    var day: String
    
    init(name: String, jenre: String, actor: String, director: String, day: String) {
        self.name = name
        self.jenre = jenre
        self.actor = actor
        self.director = director
        self.day = day
    }
}

var movie1 = Movie(name: "어벤져스", jenre: "액션", actor: "로다주", director: "몰루?", day: "20200911")

