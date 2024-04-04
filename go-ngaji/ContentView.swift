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
        VStack {
            HomeView()
        }
    }
}

#Preview {
    ContentView()
}
