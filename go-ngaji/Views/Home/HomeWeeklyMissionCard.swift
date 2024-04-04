//
//  HomeWeeklyMissionCard.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import SwiftUI

struct HomeWeeklyMissionCard: View {
    var name: String
    var point: Int
    
    var body: some View {
        NavigationLink(destination: {
            MissionPage()
        }, label: {
            Image("Al Waqiah")
                .overlay(alignment: .leading, content: {
                    VStack(alignment: .leading ,content: {
                        Text(name)
                            .font(.title3)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(point) Poin")
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
    let weeklyMission = ModelData().weeklyMission
    return HomeWeeklyMissionCard(name: weeklyMission[0].name, point: weeklyMission[0].point)
}
