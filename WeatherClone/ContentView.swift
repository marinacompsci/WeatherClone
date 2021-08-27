//
//  ContentView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CityView(city: "Berlin", weatherDescription: "Cloudy", tempNow: 13, maxTemp: 17, minTemp: 11)
                .padding(50)
            DividerView()
                
            Spacer()
            DailyViewSection()
                .padding()
            DividerView()
            WeeklyViewSection()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
