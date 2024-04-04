//
//  DailyMission.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import Foundation

struct DailyMissionModel: Hashable, Codable {
    var title: String
    var image: String
    var timeRecommendation: String
    var isMorning: Bool
    var isEvening: Bool
}
