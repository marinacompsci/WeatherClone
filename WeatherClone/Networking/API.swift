//
//  API.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import Foundation

//func loadData() -> [WeatherModel]? {
func loadData(handler: @escaping ([WeatherModel]?) -> ()) {
    guard let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?q=Dubai&appid=4d66106b91d3668aebe2b2b0ec31dc10&units=metric")
    //else { return nil }
    else { return }
    
    let jsonDecoder = JSONDecoder()
    
    URLSession.shared.dataTask(with: url) { data, resp , err in
        if let data = data {
            do {
                let decodedData = try jsonDecoder.decode(DataModel.self, from: data)
                var dataArray = [WeatherModel]()

                for key in decodedData.list.indices {
                    let weather = WeatherModel(visibility: decodedData.list[key].visibility,
                                               precipitationProbability: Int(decodedData.list[key].pop),
                                               date: decodedData.list[key].dt_txt,
                                               temp: Int(decodedData.list[key].main.temp),
                                               feelsLike: Int(decodedData.list[key].main.feels_like),
                                               tempMin: Int(decodedData.list[key].main.temp_min),
                                               tempMax: Int(decodedData.list[key].main.temp_max),
                                               pressure: decodedData.list[key].main.pressure,
                                               humidity: decodedData.list[key].main.humidity,
                                               description: decodedData.list[key].weather[0].description)
                    dataArray.append(weather)
                }
                
                DispatchQueue.main.async {
                    handler(dataArray)
                }
            } catch {
                fatalError("Error: \(error)")
            }
        }
        
    }.resume()
}

