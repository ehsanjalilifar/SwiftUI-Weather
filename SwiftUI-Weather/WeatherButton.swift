//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Ehsan Jalilifar on 10/6/23.
//

import SwiftUI

struct Weatherbutton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Button {
            print("tapped")
        } label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundColor.gradient)
                .foregroundColor(textColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10)
        }
    }
}

struct WeatherButton_Preview: PreviewProvider {
    static var previews: some View {
        Weatherbutton(title: "Test Title", textColor: .white, backgroundColor: .blue)
    }
}
