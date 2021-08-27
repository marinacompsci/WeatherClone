//
//  WeeklyView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct WeeklyView: View {
    var weekDay: WeekDays
    var imageSystemName: String
    var probabilityOfRain: Int // pop
    var minTemp: Int
    var maxTemp: Int
    
    var body: some View {
       HStack {
        Text(weekDay.rawValue.capitalized)
            Spacer()
            HStack {
                Image(systemName: imageSystemName)
                    .renderingMode(.original)
                Text("\(probabilityOfRain) %")
                    .foregroundColor(.blue)
            }
            .padding()
            Spacer()
            Text(String(maxTemp))
                .padding(.trailing)
            Text(String(minTemp))
                .foregroundColor(.gray)            
        }
       .padding()
       .font(.title2)
    }
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView(weekDay: .friday, imageSystemName: "cloud.drizzle.fill", probabilityOfRain: 70, minTemp: 11, maxTemp: 19)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
