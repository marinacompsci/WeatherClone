//
//  WeatherModel.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import Foundation

struct WeatherModel: Hashable, Identifiable {
    let id = UUID()    
    var visibility: Int
    var precipitationProbability: Int
    var date: String
    var temp: Int
    var feelsLike: Int
    var tempMin: Int
    var tempMax: Int
    var pressure: Int
    var humidity: Int
    var description: String
    
    static func createModelList(withAmount amount: Int = 5) -> [WeatherModel] {
        var data = [WeatherModel]()
        
        let description = ["Cloudy", "Sunny", "Snowing", "Thunders", "Light showers", "Stormy"]
        
        for key in 0..<amount {
            let temp = Int.random(in: -20...40)

            data.append(WeatherModel(visibility: Int.random(in: 0...1000), precipitationProbability: Int.random(in: 0...100), date: "2020-08-27 \(key+3):00:00", temp: temp, feelsLike: temp+Int.random(in: -5...5), tempMin: temp-Int.random(in: 0...5), tempMax: temp+Int.random(in: -5...5), pressure: Int.random(in: 800...1100), humidity: Int.random(in: 0...100), description: description.randomElement()!))
        }
        
        return data
        
    }
    
    static func createZeroList(withAmount amount: Int = 5) -> [WeatherModel] {
        var data = [WeatherModel]()
        
        
        for _ in 0..<amount {
            data.append(WeatherModel(visibility: 0, precipitationProbability: 0, date: "0000-00-00 00:00:00", temp: 0, feelsLike: 0, tempMin: 0, tempMax: 0, pressure: 0, humidity: 0, description: ""))
        }
        
        return data
        
    }
}
