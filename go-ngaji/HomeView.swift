//
//  HomeView.swift
//  go-ngaji
//
//  Created by Reza Athallah Rasendriya on 02/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationStack {
            VStack{
                HStack {
                    HStack(spacing: 16) {
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55, height: 55)
                        .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text("Selamat Pagi")
                                .font(.footnote)
                            Text("Athallah")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                        }
                    }
                    
                    Spacer()
                    
                    Image(systemName: "trophy.circle.fill")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color(.primary))
                }
                
                VStack {
                    HStack {
                        Text("Misi Harian")
                            .font(.title2)
                            .foregroundColor(Color(.primary))
                            .fontWeight(.bold)
                        Spacer()
                        Text("2 misi harian")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                    
                    DailyMissionRow()
                }
            }
            .padding()
            
        }
//        .padding()
        .toolbar(.hidden)
    }
}

#Preview {
    HomeView()
}
