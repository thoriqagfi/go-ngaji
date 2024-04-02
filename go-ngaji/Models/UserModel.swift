//
//  UserModel.swift
//  go-ngaji
//
//  Created by Agfi on 30/03/24.
//

import Foundation

struct UserModel {
    var name: String
    var email: String
    var username: String
    var password: String
    
    static func generateAgfiUser() -> UserModel {
        let user = UserModel(name: "Agfi", email: "thoriq.aghfi60@gmail.com", username: "thoriqagfi", password: "123456789")
        return user
    }
}

func generateDummyUser() -> [UserModel] {
    let users = [
        UserModel(name: "Agfi", email: "thoriq.aghfi60@gmail.com", username: "thoriqagfi", password: "123456789")
    ]
    return users
}
