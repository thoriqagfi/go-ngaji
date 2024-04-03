//
//  WeeklyMissionModel.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import Foundation

struct WeeklyMissionModel: Codable, Hashable {
    var name: String
    var image: String
    var timeRecommendation: String
    var point: Int
}
