//
//  SurahModel.swift
//  go-ngaji
//
//  Created by Agfi on 30/03/24.
//

import Foundation

struct SurahModel: Hashable, Codable {
    var name: String
    var ayat: Int
    var motivation: String
    var timeRecommendation: String
}
