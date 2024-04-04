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
    var profileImage: String
    var username: String
    var password: String
    var streak: Int
    var dailyMissionProgress: Int
    var point: Int
    var isBacaanPagi: Bool
    var isBacaanPetang: Bool
    
    static func generateAgfiUser() -> UserModel {
        let user = UserModel(name: "Riyadh", email: "thoriq.aghfi60@gmail.com", profileImage: "Profile Image", username: "thoriqagfi", password: "123456789", streak: 30, dailyMissionProgress: 0, point: 0, isBacaanPagi: false, isBacaanPetang: false)
        return user
    }
}
