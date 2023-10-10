//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Ehsan Jalilifar on 10/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                  
                HStack(spacing: 20){
                    Spacer()
                    WeatherDayView(dayOfWeek: "TUE", imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", temperature: 66)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", temperature: 55)
                    Spacer()
                }
                
                Spacer()
                
                Weatherbutton(title: "Change Day Time", textColor: .white, backgroundColor: .mint)
                
                Spacer()
            }
            
        }
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
#Preview {
    ContentView()
}
