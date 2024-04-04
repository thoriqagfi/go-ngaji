//
//  FinishMissionPageView.swift
//  go-ngaji
//
//  Created by Reza Athallah Rasendriya on 03/04/24.
//

import SwiftUI

struct FinishMissionPageView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                VStack(spacing: 18) {
                    Text("Alhamdulillah")
                        .font(.system(size: 27))
                        .bold()
                        .fontWidth(.expanded)
                        .foregroundStyle(Color(.primary))
                    Text("Kamu telah menyelesaikan \nmisi harian")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color(.primary))

                }
                
                Spacer()
                
                Image("finish")
                
                Spacer()
                
                VStack {
                    Text("Kamu mendapatkan")
                        .font(.headline)
                    HStack {
                        Image(systemName: "p.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(.primary))
                        Text("20")
                            .bold()
                            .font(.system(size: 28))
                            .foregroundStyle(Color(.primary))
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: HomeView(), label: {
                    Text("Kembali ke Dashboard")
                        .font(.system(size: 19)) // Change font size
                        .foregroundColor(Color(.white)) // Change text color
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 20)
                })
                .background(Color(.primary))
                .cornerRadius(10)
                .edgesIgnoringSafeArea(.horizontal)
            }
            .padding()
        }
        .toolbar(.hidden)
    }
    
}

#Preview {
    FinishMissionPageView()
}
