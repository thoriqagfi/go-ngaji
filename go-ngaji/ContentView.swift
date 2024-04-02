//
//  ContentView.swift
//  go-ngaji
//
//  Created by Agfi on 28/03/24.
//

import SwiftUI
import Lottie

struct ContentView: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case home
        case lottie
    }
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
            Text("Tab Content 1")
                .tabItem {
                    Label("Home", systemImage: "star")
                }
                .tag(Tab.home)
            LottieViewComponent()
                .tabItem {
                    Label("Chosen Surah", systemImage: "list.bullet")
                }
                .tag(Tab.lottie)
        })
        }
}

#Preview {
    ContentView()
}
