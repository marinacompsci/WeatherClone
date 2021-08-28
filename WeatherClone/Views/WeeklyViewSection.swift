//
//  WeeklyViewSection.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct WeeklyViewSection: View {
    var data: [WeatherModel]
    

    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(data) { item in
                //Text(item.date)
                WeeklyView(weekDay: .friday, imageSystemName: "cloud.sun.rain.fill", probabilityOfRain: item.precipitationProbability, minTemp: item.tempMin, maxTemp: item.tempMax)
                
            }
        }
    }
}

struct WeeklyViewSection_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyViewSection(data: WeatherModel.createModelList(withAmount: 5))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
