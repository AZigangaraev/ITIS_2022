//
//  UserProfile.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 18.07.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let status: Status
    let optionalInfo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Сергей",
            surname: "Бабич",
            photo: "ProfilePhoto",
            status: .student,
            optionalInfo: "2 курс"
        )
    }
}

enum Status: String {
    case student = "Студент"
    case worker = "Работник"
    case schooler = "Ученик"
}
