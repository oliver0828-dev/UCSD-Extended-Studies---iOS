//
//  ContentView.swift
//  UCSD Final Project
//
//  Created by Oliver Park on 8/3/24.
//

import SwiftUI
import Charts


struct iPhoneData: Identifiable {
    let id = UUID()
    let model: String
    let count: Int
}

struct ContentView: View {
    let iPhoneCounts = [
        iPhoneData(model: "iPhone 14 Pro", count: 4),
        iPhoneData(model: "iPhone 15", count: 3),
        iPhoneData(model: "iPhone 15 Pro", count: 5)
    ]
    
    var body: some View {
        VStack {
            Text("iPhone Sales Data")
                .font(.title)
            
            Chart(iPhoneCounts) { item in
                BarMark(
                    x: .value("iPhone Model", item.model),
                    y: .value("Count", item.count)
                )
                .foregroundStyle(by: .value("Model", item.model))
            }
            .frame(height: 300)
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
