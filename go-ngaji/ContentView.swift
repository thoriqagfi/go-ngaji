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
//        TabView(selection: $selection,
//                content:  {
                HomePage()
//                .padding(.vertical)
//                    .tabItem {
//                        Label("Home", systemImage: "house")
//                    }
//                    .tag(Tab.home)
//                    .listStyle(.inset)
//                LottieViewComponent()
//                    .tabItem {
//                        Label("Chosen Surah", systemImage: "list.bullet")
//                    }
//                    .tag(Tab.lottie)
//        })
//        .listStyle(.inset)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
