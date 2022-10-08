//
//  User.swift
//  LoginApp
//
//  Created by Сергей Бабич on 08.10.2022.
//

struct User {
    let login: String
    let password: String

    static func getUserData() -> User {
        User(
            login: "User",
            password: "1234"
        )
    }
}
