//
//  API.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

func loadData(handler: @escaping (DataModel?) -> ()) {
    guard let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=52.41781&lon=13.36671&exclude=alerts&exclude=minutely&units=metric&appid=4d66106b91d3668aebe2b2b0ec31dc10")
    else { return }
    
    let jsonDecoder = JSONDecoder()
    
    URLSession.shared.dataTask(with: url) { data, resp , err in
        if let data = data {
            do {
                let decodedData = try jsonDecoder.decode(DataModel.self, from: data)            
                
                DispatchQueue.main.async {
                    handler(decodedData)
                }
            } catch {
                fatalError("Could not load data from API. Error: \(error)")
            }
        }
        
    }.resume()
}

func loadIcon(iconString: String, handler: @escaping (UIImage) -> ()) {
    guard let url = URL(string: "https://openweathermap.org/img/wn/\(iconString)@2x.png")
    else { return }
        
    URLSession.shared.dataTask(with: url) { data, resp, err in
        guard let data = data else { fatalError("Could not get icon from API. Error: \(err!)") }
        handler(UIImage(data: data)!)
        
    }.resume()
}

