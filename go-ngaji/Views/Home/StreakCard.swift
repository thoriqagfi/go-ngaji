//
//  StreakCard.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import SwiftUI

struct StreakCard: View {
    var streak: Int
    
    var body: some View {
        Image("Streak")
            .overlay(alignment: .leading ,content: {
                VStack(alignment: .leading ,content: {
                    Text("Streak")
                        .font(.title3)
                        .foregroundColor(Color(.greenPrimary))
                    
                    Text("\(streak) Hari")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.greenPrimary))
                    
                    Text("Selesaikan Misi Harian")
                        .font(.caption)
                        .foregroundColor(Color(.greenPrimary))
                    
                })
                .padding()
            })
            .cornerRadius(10)
    }
}

#Preview {
    let agfiData = UserModel.generateAgfiUser()
    return StreakCard(streak: agfiData.streak )
}
