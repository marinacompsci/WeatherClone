//
//  WeeklyView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct WeeklyView: View {
    @State var iconImage: UIImage
    var iconString: String
    var weekDay: String
    var probabilityOfRain: Double // pop
    var minTemp: Int
    var maxTemp: Int
    
    var body: some View {
       HStack {
            Text(weekDay.capitalized)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .leading)
            Spacer()
            HStack {
                Image(uiImage: iconImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 50)
                    .padding(.trailing, -3)
                Text("\(Int(probabilityOfRain * 100)) %")
                    .frame(width: 60)
                    .lineLimit(0)
                    .foregroundColor(Color("customBlue"))
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
            Spacer()
            Text(String(maxTemp))
                .padding(.trailing)
            Text(String(minTemp))
                .foregroundColor(Color(red: 38/255, green: 37/255, blue: 37/255))
       }
       .frame(width: .infinity, height: 50)
       .padding(.leading)
       .padding(.trailing)
       .font(.system(size: 18))
       .onAppear {
           loadIcon(iconString: iconString, handler: updateIconImage)
    }
}
   
    
    func updateIconImage(image: UIImage) {
        iconImage = image
    }
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView(iconImage: UIImage(systemName: "thermometer")!, iconString: "04d", weekDay: "friday", probabilityOfRain: 70, minTemp: 11, maxTemp: 19)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
