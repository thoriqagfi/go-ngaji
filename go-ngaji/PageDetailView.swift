//
//  PageDetailView.swift
//  go-ngaji
//
//  Created by Reza Athallah Rasendriya on 02/04/24.
//

import SwiftUI

struct PageDetailView: View {
    
//    @EnvironmentObject var missionSurah: SurahModel
    
    @State var timeRemaining = 20
    @State var totalTime = 0
    
    @State var timer: Timer?
    @State var missionTimer: Timer?
    
    @State var isRunning: Bool = false
    
    @State var finishedRead: Bool = false
    @State var data = testData
    
    var body: some View {
        NavigationStack {
            VStack {
//                Text("\(totalTime)")
                VStack(spacing: 15) {
                    Text("Waktu membaca")
                        .font(.headline)
                        .foregroundStyle(Color(.primary))
                    
                    VStack {
                        Text("\(formattedTime())")
                            .foregroundStyle(Color(.white))
                            .font(.system(size: 36))
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .background(Color(.primary).opacity(0.5))
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 4)
                }
                .padding(.vertical, 30)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 14) {
                    Text("Bacaan Pagi ini")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.primary))
                    
                    ForEach(data, id: \.self) { mission in
                        DailyMissionCard(estimatedTime: mission.estimatedTime, title: mission.title, isReading: mission.isReading)
                    }

                }
                
                Spacer()
                
                Button {
                    isRunning.toggle()
                    if isRunning {
                        startRead()
                    } else {
                        stopTimer()
                    }
                } label: {
                    if isRunning || timeRemaining == 0 {
                        NavigationLink(destination: FinishMissionPageView()) {
                            Text("Selesai Membaca")
                                .font(.system(size: 19)) // Change font size
                                .foregroundColor(Color(.white)) // Change text color
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 20)
                        }
                    } else {
                        Text("Mulai Membaca")
                            .font(.system(size: 19)) // Change font size
                            .foregroundColor(Color(.white)) // Change text color
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                    }
                    
                }
                .disabled(timeRemaining != 0 && isRunning)
                
                .background(isRunning ? Color(.gray) : Color(.primary))
                .cornerRadius(10)
                .edgesIgnoringSafeArea(.horizontal)
                
            }
            .padding()
            .navigationTitle("Surah Pagi")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func formattedTime() -> String {
        let minutes = Int(timeRemaining) / 60
        let seconds = Int(timeRemaining) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    private func startRead() {
        var totalMissionTime = getTotalTime()
        var i = 0
        var isReadingMission = false
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                if timeRemaining <= totalMissionTime - data[i].estimatedTime {
                    totalMissionTime -= data[i].estimatedTime
                    i += 1
                }
                
                if totalMissionTime == timeRemaining {
                    isReadingMission.toggle()
                    if isReadingMission {
                        data[i].isReading = true
                        isReadingMission.toggle()
                    }
                    
                }
                timeRemaining -= 1
            } else {
                stopTimer()
            }
        }
        
        
    }
    
    private func stopTimer() {
        isRunning = false
        timer?.invalidate()
//        timeRemaining = getTotalTime()
    }
    
    private func getTotalTime() -> Int {
        var total = 0
        
        for mission in data {
            total += mission.estimatedTime
        }
        
        return total
    }
}

struct DailyMissionCard: View {
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


#Preview {
    PageDetailView()
}
