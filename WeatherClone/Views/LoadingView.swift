//
//  LoadingView.swift
//  WeatherClone
//
//  Created by Marina Beatriz Santana de Aguiar on 28.08.21.
//

import SwiftUI

struct LoadingView: View {
    @State var isAnimating: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 15/255, green: 14/255, blue: 14/255, opacity: 0.95))
            ActivityIndicator(isAnimating: $isAnimating, style: .large)
        }
        .ignoresSafeArea()
    }
}

extension View {
    func visibility(hidden: Bool) -> some View {
      modifier(VisibilityStyle(hidden: hidden))
   }
}

struct VisibilityStyle: ViewModifier {
   let hidden: Bool
    
    @ViewBuilder
    func body(content: Content) -> some View {
        if hidden {
            content.hidden()
        } else {
            content
        }
   }
}


struct ActivityIndicator: UIViewRepresentable {
    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(isAnimating: true)
    }
}
