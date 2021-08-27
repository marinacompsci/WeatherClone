//
//  DailyView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DailyView: View {
    var body: some View {
        ZStack {
            ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                HStack(spacing: 25) {
                    VStack {
                        Image(systemName: "sun.dust.fill")
                            .renderingMode(.original)
                            .font(Font.system(size: 50))
                            .frame(width: 115, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(UIColor.darkGray))
                            .border(Color.gray, width: 0.5)
                            .cornerRadius(7)
                            .padding(.bottom, 5)
                        Text("Sun and Dust")

                    }
                    
                    
                    VStack {
                        Image(systemName: "sparkles")
                            .renderingMode(.original)
                            .font(Font.system(size: 50))
                            .frame(width: 115, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(UIColor.darkGray))
                            .border(Color.gray, width: 0.5)
                            .cornerRadius(7)
                            .padding(.bottom, 5)
                        Text("Sunny")

                    }
                    VStack {
                        Image(systemName: "moon.circle.fill")
                            .renderingMode(.original)
                            .font(Font.system(size: 50))
                            .frame(width: 115, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(UIColor.darkGray))
                            .border(Color.gray, width: 0.5)
                            .cornerRadius(7)
                            .padding(.bottom, 5)
                        Text("Moon")

                    }
                    VStack {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .font(Font.system(size: 50))
                            .frame(width: 115, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(UIColor.darkGray))
                            .border(Color.gray, width: 0.5)
                            .cornerRadius(7)
                            .padding(.bottom, 5)
                        Text("Cloudy")

                    }
                    
                    VStack {
                        Image(systemName: "cloud.rain.fill")
                            .renderingMode(.original)
                            .font(Font.system(size: 50))
                            .frame(width: 115, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(UIColor.darkGray))
                            .border(Color.gray, width: 0.5)
                            .cornerRadius(7)
                            .padding(.bottom, 5)
                        Text("Rain")

                    }
                    
                    VStack {
                        Image(systemName: "cloud.snow.fill")
                            .renderingMode(.original)
                            .font(Font.system(size: 50))
                            .frame(width: 115, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(UIColor.darkGray))
                            .border(Color.gray, width: 0.5)
                            .cornerRadius(7)
                            .padding(.bottom, 5)
                        Text("Snow")

                    }
                }
                .padding()

            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    /*var weekDay: String
    var imageSystemName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(weekDay.uppercased())
                .font(.system(size: 15))
                .padding(.bottom, 5)
            Image(systemName: imageSystemName)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 5)
                .frame(width: 40, height: 40)
            Text("\(temperature)º")
                .fontWeight(.bold)
        }
        
    }*/
    
}


struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
