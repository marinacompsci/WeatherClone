//
//  DividerView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 27.08.21.
//

import SwiftUI

struct DividerView: View {
    var height: CGFloat = 1
    
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(height: height)
            //.edgesIgnoringSafeArea(.horizontal)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView(height: 5)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
