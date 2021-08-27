//
//  DailyView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DailyView: View {
    var hour: String
    var imageSystemName: String
    var temperature: Int
        
    var body: some View {
        VStack {
            Text(hour.capitalized)
                .padding(.bottom, 5)
                .font(.system(size: 15))
            Image(systemName: imageSystemName)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 5)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 40)
            Text("\(temperature)º")
                .fontWeight(hour == "Now" ? .bold : .regular)
        }
        .font(.system(size: 18))


    }
}
        
    


struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView(hour: "Now", imageSystemName: "cloud.drizzle.fill", temperature: 13)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
