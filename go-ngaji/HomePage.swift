//
//  HomePage.swift
//  go-ngaji
//
//  Created by Agfi on 02/04/24.
//

import SwiftUI

struct HomePage: View {
    @Environment(ModelData.self) var modelData
    
    var agfiData = UserModel.generateAgfiUser()
    
    var body: some View {
        NavigationSplitView {
                VStack(spacing: 32) {
                    HomeUserProfile(name: agfiData.name, profileImage: agfiData.profileImage)
                        .padding(.horizontal)
                    
                    HStack(content: {
                        StreakCard(streak: agfiData.streak )
                        Spacer()
                        HomeProgressCard(isBacaanPagi: agfiData.isBacaanPagi, isBacaanPetang: agfiData.isBacaanPetang)
                    })
                    .padding(.horizontal)
                    
                    VStack {
                        HomeMissionTypeTitle(type: "Harian", variety: 2)
                            .padding(.horizontal)
                        HStack(content: {
                            ForEach(modelData.dailyMission, id: \.self) { mission in
                                HomeDailyMissionCard(image: mission.image, title: mission.title, timeRecommendation: mission.timeRecommendation)
                            }
                            .listRowInsets(EdgeInsets())
                        })
                        .padding(.horizontal)
                    }
                    
                    VStack {
                        HomeMissionTypeTitle(type: "Mingguan", variety: 5)
                            .padding(.horizontal)
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(alignment: .top, content: {
                                ForEach(modelData.weeklyMission, id: \.self) { mission in
                                    HomeWeeklyMissionCard(name: mission.name, point: mission.point)
                                }
                                .listRowInsets(EdgeInsets())
                            })
                            .padding(.horizontal)
                        })
                    }
                    
                    HomeMotivationCard()
                    
                }
        } detail: {
            Text("Select a Mission")
        }
    }
}

#Preview {
    HomePage()
        .environment(ModelData())
}

extension Float {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
