//
//  HomeMissionTypeTitle.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import SwiftUI

struct HomeMissionTypeTitle: View {
    var type: String
    var variety: Int
    
    var body: some View {
        HStack(content: {
            Text("Misi \(type)")
                .foregroundStyle(Color(.greenPrimary))
                .font(.title3)
                .fontWeight(.semibold)
            Spacer()
            Text("\(variety) misi mingguan")
                .font(.footnote)
                .foregroundStyle(.gray)
        })
    }
}

#Preview {
    let typeTitle = ModelData().missionType
    return HomeMissionTypeTitle(type: typeTitle[0].type, variety: typeTitle[0].variety)
}
