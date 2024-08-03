//
//  ContentView.swift
//  UCSD Project 4
//
//  Created by Oliver Park on 8/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            View1()
                .tabItem {
                    Label("View 1", systemImage: "1.square")
                }
            View2()
                .tabItem {
                    Label("View 2", systemImage: "2.square")
                }
            View3()
                .tabItem {
                    Label("View 3", systemImage: "3.square")
                }
        }
    }
}

#Preview {
    ContentView()
}
