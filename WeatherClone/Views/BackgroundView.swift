//
//  BackgroundView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 28.08.21.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .topLeading, endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
