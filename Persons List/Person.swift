//
//  Person.swift
//  Persons List
//
//  Created by Александр Умаров on 09.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String  {
        "\(name) \(surname)"
    }
    
}

let nameList = [
    "Mike", "Bill",
    "Smith", "Cris",
    "Steve", "Tim",
    "Carl", "Mack",
    "Dave", "Elen"
]

let surnameList = [
    "Miller", "Jobs",
    "Carcher", "Cosby",
    "Sanders", "Elis",
    "Johnson", "Ronson",
    "Sanches", "Barret"
]

let emailList = [
"1@mail.ru", "2@mail.ru",
"3@mail.ru", "4@mail.ru",
"5@mail.ru", "6@mail.ru",
"7@mail.ru", "8@mail.ru",
"9@mail.ru", "10@mail.ru"
]

let phoneList = [
"92142341", "12423452",
"34251231", "12342342",
"34321223", "14234241",
"13424531", "12434641",
"98592341", "28749191"
]
var personsList: [Person] = []

func getRandomPerson() -> Person {
  let randomName = nameList.randomElement()
 let randomSurname = surnameList.randomElement()
 let randomEmail = emailList.randomElement()
let  randomPhone = phoneList.randomElement()
  return Person(name: randomName ?? "",
                surname: randomSurname ?? "",
                phone: randomPhone ?? "",
                email: randomEmail ?? "")
}
extension Person{
    static func getPersonsList() -> [Person] {
       for _ in 1...10 {
           personsList.append(getRandomPerson()) }
       return personsList
   }
}
