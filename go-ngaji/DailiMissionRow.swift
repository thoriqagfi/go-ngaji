//
//  DailiMissionRow.swift
//  go-ngaji
//
//  Created by Reza Athallah Rasendriya on 03/04/24.
//

import SwiftUI

struct DailyMissionRow: View {
    var body: some View {
        NavigationStack {
            HStack {
                NavigationLink(destination: PageDetailView()) {
                    Rectangle()
                        .frame(width: 100, height: 100)
                }
            }
            .navigationTitle("Mission")
            .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}
