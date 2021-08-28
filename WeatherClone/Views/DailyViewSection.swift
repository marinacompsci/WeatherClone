//
//  DailyViewSection.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DailyViewSection: View {
    var data: DataModel
    @State var iconImage: UIImage
    
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(data.hourly, id: \.self) { item in
                        DailyView(hour:
                                    Date(timeIntervalSince1970: TimeInterval(item.dt)).description.splitApiDate()[1].separateHourFromTime(),
                                  iconString: item.weather[0].icon!,
                                  iconImage: iconImage, temperature: Int(item.temp))
                    }
                }
            }
        }
        .foregroundColor(.white)
        
    }
    
   
}

struct DailyViewSection_Previews: PreviewProvider {
    static var previews: some View {
        DailyViewSection(data: DataModel.createFakeDateModel(), iconImage: UIImage(systemName: "thermometer")!)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
