//
//  ModelData.swift
//  go-ngaji
//
//  Created by Agfi on 01/04/24.
//

import Foundation

//<<<<<<< HEAD
//@Observable
//class ModelData {
//    var surah: [SurahModel] = loadData("surahData.json")
var testData: [TestModel] = loadData("test.json")
//}
//=======
@Observable
class ModelData {
    var surah: [SurahModel] = loadData("surahData.json")
    var dailyMission: [DailyMissionModel] = loadData("dailyMission.json")
    var weeklyMission: [WeeklyMissionModel] = loadData("weeklyMission.json")
    var missionType: [MissionTypeModel] = loadData("missionTypeData.json")
}
//>>>>>>> main

func loadData<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data =  try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
}
