//
//  CityView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct CityView: View {
    var city: String
    var weatherDescription: String
    var tempNow: Int
    var maxTemp: Int
    var minTemp: Int
    
    var body: some View {
        VStack {
            VStack {
                Text(city)
                    .font(.largeTitle)
                Text(weatherDescription)
                    .font(.title3)
                Text("\(tempNow)º")
                    .font(.system(size: 90))
                    .fontWeight(.light)
                Text("H:\(maxTemp)º  L:\(minTemp)º")
                    .font(.title3)
            }
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView(city: "Berlin", weatherDescription: "Cloudy", tempNow: 13, maxTemp: 17, minTemp: 11)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
