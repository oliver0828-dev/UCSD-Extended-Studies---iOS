//
//  ContentView.swift
//  UCSD Project 3
//
//  Created by Oliver Park on 8/1/24.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @FocusState private var isTextFieldFocused: Bool

    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter your text here", text: $text)
                .keyboardType(.default)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .focused($isTextFieldFocused)
            
            Button("Show Keyboard") {
                isTextFieldFocused = true
            }
            .padding()
            .background(.blue.gradient)
            .foregroundStyle(.white)
            .cornerRadius(10)

            Button("Hide Keyboard") {
                isTextFieldFocused = false
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
            .padding()
            .background(.red.gradient)
            .foregroundStyle(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
