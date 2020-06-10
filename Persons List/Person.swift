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
    "Dave", "Elen",
    "Chack", "Linda",
    "Gabe", "Clark",
    "Aaron", "Betsy",
    "Anne", "Cristina",
    "Backy", "Casper"
]

let surnameList = [
    "Miller", "Jobs",
    "Carcher", "Cosby",
    "Sanders", "Elis",
    "Johnson", "Ronson",
    "Sanches", "Barret",
    "Milton", "Depp",
    "Heartman", "Davis",
    "Colman", "Spilberg",
    "Barton", "Gigson",
    "Swift", "Bose"
]

let emailList = [
    "1@mail.ru", "2@mail.ru",
    "3@mail.ru", "4@mail.ru",
    "5@mail.ru", "6@mail.ru",
    "7@mail.ru", "8@mail.ru",
    "9@mail.ru", "10@mail.ru",
    "11@mail.ru", "12@mail.ru",
    "13@mail.ru", "14@mail.ru",
    "15@mail.ru", "16@mail.ru",
    "17@mail.ru", "18@mail.ru",
    "19@mail.ru", "20@mail.ru"
    
]

let phoneList = [
    "92142341", "12423452",
    "34251231", "12342342",
    "34321223", "14234241",
    "13424531", "12434641",
    "98592341", "28749191",
    "87645367", "5465768732",
    "673582312", "5234913132",
    "3418748591", "5987293841",
    "48534546982", "1345348741",
    "457698264123", "4273641113"
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
            personsList.append(getRandomPerson())
        }
        return personsList
    }
}
