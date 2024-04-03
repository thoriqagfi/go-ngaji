//
//  HomeMotivationCard.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import SwiftUI

struct HomeMotivationCard: View {
    var body: some View {
        Image("MotivationCard")
            .overlay(content: {
                VStack(alignment: .center, content: {
                    Text("Do not despair of the \nmercy of Allah.")
                        .font(.subheadline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.greenPrimary)
                        .multilineTextAlignment(.center)
                    
                    Text("Quran 39:53")
                        .font(.footnote)
                        .foregroundStyle(.greenPrimary)
                })
            })
    }
}

#Preview {
    HomeMotivationCard()
}
