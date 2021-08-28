//
//  DailyView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DailyView: View {
    var hour: String
    var iconString: String
   @State var iconImage: UIImage
    var temperature: Int
        
    var body: some View {
        VStack {
            Text(hour.capitalized)
                .font(.system(size: 15))
                .padding(.bottom, -2.5)
                .padding(.top, 5)
            Image(uiImage: iconImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 50)
                .padding(.bottom, -2.5)
            Text("\(temperature)º")
                .fontWeight(hour == "Now" ? .bold : .regular)
                .padding(.bottom, 5)
        }
        .frame(height: 110)
        .background(Color(red: 168/255, green: 166/255, blue: 166/255, opacity: 0.3))
        .cornerRadius(2)
        .font(.system(size: 18))
        .onAppear {
            loadIcon(iconString: iconString, handler: updateIconImage)
        }

    }
    
    func updateIconImage(image: UIImage) {
        iconImage = image
    }

}
        


struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView(hour: "Now",iconString: "04d", iconImage: UIImage(systemName: "thermometer")!, temperature: 13)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
