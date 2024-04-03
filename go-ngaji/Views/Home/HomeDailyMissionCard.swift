//
//  HomeDailyMissionCard.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import SwiftUI

struct HomeDailyMissionCard: View {
    var image: String
    var title: String
    var timeRecommendation: String
    
    func checkCurrentTime() -> [Bool] {
        let calendar = Calendar.current
        let date = Date()
        let components = calendar.dateComponents([.hour], from: date)
        if let hour = components.hour {
            let isMorning = (5...9).contains(hour)
            let isEvening = (15...19).contains(hour)
            return [isMorning, isEvening]
        }
        return [false, false]
    }
    
    var body: some View {
        NavigationLink(destination: {
            MissionPage()
        }, label: {
            Image(image)
                .overlay(alignment: .leading, content: {
                    VStack(alignment: .leading ,content: {
                        Text(title)
                            .font(.title3)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        Spacer()
                        Text(timeRecommendation)
                            .foregroundStyle(.white)
                            .font(.footnote)
                    })
                    .padding()
                })
                .cornerRadius(12)
        })
    }
}

#Preview {
    let dailyMission = ModelData().dailyMission
    return HomeDailyMissionCard(image: dailyMission[0].image, title: dailyMission[0].title, timeRecommendation: dailyMission[0].timeRecommendation)
}
