//
//  MissionCard.swift
//  go-ngaji
//
//  Created by Reza Athallah Rasendriya on 04/04/24.
//

import SwiftUI

struct MissionCard: View {
    var estimatedTime:Int//in seconds
    var title:String
    var isReading:Bool
    var isDone: Bool = false
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color(.primary))
                Text("\(estimatedTime) menit")
                    .font(.footnote)
                    .foregroundStyle(Color(.black))
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 20)
            .cornerRadius(300)
            Spacer()
        }
        .background(Color(.white))
        .border(isReading ? Color(.primary) : Color(.clear))
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 4)
    }
}
//#Preview {
//    MissionCard()
//}
