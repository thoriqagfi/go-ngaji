//
//  HomeUserProfile.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import SwiftUI

struct HomeUserProfile: View {
    var name: String
    var profileImage: String
    
    var body: some View {
        HStack(content: {
            ZStack(content: {
                Rectangle()
                    .frame(width: 56, height: 56)
                    .cornerRadius(50)
                Image(profileImage)
                    .cornerRadius(50)
            })
            VStack(alignment: .leading, content: {
                Text("Selamat Pagi")
                    .font(.footnote)
                Text(name)
                    .fontWeight(.bold)
                    .font(.callout)
            })
            .padding(3)
            Spacer()
            NavigationLink(destination: {
                LeaderboardPage()
            }, label: {
                Image(systemName: "trophy.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(.greenPrimary))
            })
        })
    }
}

#Preview {
    let agfiData = UserModel.generateAgfiUser()
    return HomeUserProfile(name: agfiData.name, profileImage: agfiData.profileImage )
}
