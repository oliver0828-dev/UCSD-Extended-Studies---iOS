//
//  ContentView.swift
//  UCSD Project 1
//
//  Created by Oliver Park on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight: Bool = false
    @State private var timSpeech = "Good Morning"
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack {
                Image(isNight ? "timCook2" : "timCook1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 500)
                
                HStack {
                    Text(isNight ? "Good Evening" : "Good Morning")
                    Image(systemName: isNight ? "moon.fill" : "sun.max.fill")
                       
                }
                .foregroundStyle(isNight ? .purple : .yellow )
                .font(.title)
                .fontWeight(.bold)
                
                
                Button {
                    isNight.toggle()
                } label: {
                    HStack {
                        Text(isNight ? "Morning Mode" : "Night Mode")
                            .font(.title3)
                        Image(systemName:isNight ? "sun.max.fill" : "moon.fill")
                    }
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 60)
                    .background(isNight ? Color.blue.gradient : Color.black.gradient)
                    .clipShape(.rect(cornerRadius: 20))
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
