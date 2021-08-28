//
//  WeatherModel.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import Foundation

struct DataModel: Decodable {
    var list: [ListInfo]
}

struct ListInfo: Decodable {
    var main: MainInfo
    var weather: [WeatherInfo]
    var visibility: Int
    var pop: Double
    var dt_txt: String
}

struct MainInfo: Decodable {
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Int
    var humidity: Int
}

struct WeatherInfo: Decodable {
    var main: String
    var description: String
}
