//
//  WeatherModel.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DataModel: Decodable {    
    var current: CurrentInfo
    var hourly: [HourlyInfo]
    var daily: [DailyInfo]
    
    static func createFakeDateModel() -> DataModel {
        let descriptions = ["overcast clouds", "moderate rain", "light rain", "broken clouds", "sunny", "snowy", "stormy", "thunders"]
        let mains = ["Cloud", "Sun"]
        let extraInfo = [ExtraInfo(main: mains.randomElement()!, description: descriptions.randomElement()!, icon: "04d")]
        let temp = Double.random(in: -10...40)
        let current = CurrentInfo(dt: 1630666800, sunrise: 1630666800, sunset: 1630691462, temp: temp, feels_like: temp + Double.random(in: -5...5), pressure: Int.random(in: 900...1100), humidity: Int.random(in: 0...100), uvi: Double.random(in: 0...50), visibility: Int.random(in: 100...10000), clouds: Int.random(in: 0...100), wind_speed: Double.random(in: 0...10), wind_deg: Int.random(in: 0...360), weather: extraInfo)
        
        var hourly = [HourlyInfo]()
        let time = 1630137600
        let extraInfo2 = [ExtraInfo(main: mains.randomElement()!, description: descriptions.randomElement()!, icon: "04d")]
        for index in 0..<48 {
            hourly.append(
                HourlyInfo(dt: time + (index * 3600), temp: temp + Double.random(in: -5...5), feels_like: temp + Double.random(in: -5...5), pressure: Int.random(in: 900...1100), humidity: Int.random(in: 0...100), uvi: Double.random(in: 0...50), visibility: Int.random(in: 100...10000), clouds: Int.random(in: 0...100), wind_speed: Double.random(in: 0...10), wind_deg: Int.random(in: 0...360), weather: extraInfo2)
            )
        }
        
        var daily = [DailyInfo]()
        
        let date = 1630148400
        
        for index in 0...7 {
            let temp = Double.random(in: -10...40)
            daily.append(DailyInfo(dt: date + (index * 3600), sunrise: 1630123873, sunset: 1630173884, temp: TempInfo(day: temp + Double.random(in: -5...5), min: temp - Double.random(in: 0...5), max: temp + Double.random(in: 0...5)), clouds: Int.random(in: 0...100), pop: Double.random(in: 0...1), rain: Double.random(in: 0...100), uvi: Double.random(in: 0...50), weather: [ExtraInfo(main: "-", description: "-", icon: "04d")]))
        }
        
        return DataModel(current: current, hourly: hourly, daily: daily)
    }
    
    static func createModelWithZeroedValues() -> DataModel {
        let extraInfo = [ExtraInfo(main: "-", description: "-", icon: "04d")]
    
        let current = CurrentInfo(dt: 1630666800, sunrise: 1630666800, sunset: 1630691462, temp: 0.0, feels_like: 0.0, pressure: 0, humidity: 0, uvi: 0.0, visibility: 0, clouds: 0, wind_speed: 0.0, wind_deg: 0, weather: extraInfo)
        
        var hourly = [HourlyInfo]()
        
        for _ in 0..<48 {
            hourly.append(
                HourlyInfo(dt: 1630137600, temp: 0.0, feels_like: 0.0, pressure: 0, humidity: Int.random(in: 0...100), uvi: 0.0, visibility: 0, clouds: 0, wind_speed: 0.0, wind_deg: 0, weather: [ExtraInfo(main: "-", description: "-", icon: "04d")])
            )
        }
        
        var daily = [DailyInfo]()
        for _ in 0...7 {
            daily.append(DailyInfo(dt: 1630148400, sunrise: 1630123873, sunset: 1630173884, temp: TempInfo(day: 0.0, min: 0.0, max: 0.0), clouds: 0, pop: 0.0, rain: 0.0, uvi: 0.0, weather: [ExtraInfo(main: "-", description: "-", icon: "04d")]))
        }
        
        return DataModel(current: current, hourly: hourly, daily: daily)
    }

}

struct CurrentInfo: Decodable {
    var dt: Int
    var sunrise: Int
    var sunset: Int
    var temp: Double
    var feels_like: Double
    var pressure: Int
    var humidity: Int
    var uvi: Double
    var visibility: Int
    var clouds: Int
    var wind_speed: Double
    var wind_deg: Int
    var weather: [ExtraInfo]
}

struct HourlyInfo: Decodable, Hashable {
    let id = UUID()
    var dt: Int
    var temp: Double
    var feels_like: Double
    var pressure: Int
    var humidity: Int
    var uvi: Double
    var visibility: Int
    var clouds: Int
    var wind_speed: Double
    var wind_deg: Int
    var weather: [ExtraInfo]
}


struct ExtraInfo: Decodable, Hashable { // hourly.weather or current.weather
    var main: String
    var description: String
    var icon: String?
}


struct DailyInfo: Decodable, Hashable {
    let id = UUID()
    var dt: Int
    var sunrise: Int
    var sunset: Int
    var temp: TempInfo
    var clouds: Int
    var pop: Double
    var rain: Double?
    var uvi: Double
    var weather: [ExtraInfo]
}

struct TempInfo: Decodable, Hashable {
    var day: Double
    var min: Double
    var max: Double
}

