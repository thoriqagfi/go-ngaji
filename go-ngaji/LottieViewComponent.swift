//
//  LottieView.swift
//  go-ngaji
//
//  Created by Agfi on 01/04/24.
//

import SwiftUI
import Lottie

struct LottieViewComponent: View {
    @State var playbackMode = LottiePlaybackMode.paused(at: LottiePlaybackMode.PausedState.currentFrame)
    
    var body: some View {
        VStack {
            LottieView(animation: .named("ngaji_loading"))
                .playbackMode(playbackMode)
                .animationDidFinish { _ in
                  playbackMode = .paused
                }
              
              Button {
                  playbackMode = .playing(LottiePlaybackMode.PlaybackMode.fromProgress(0, toProgress: 1, loopMode: .playOnce))
              } label: {
                Image(systemName: "play.fill")
              }
        }
    }
}

#Preview {
    LottieViewComponent()
}
