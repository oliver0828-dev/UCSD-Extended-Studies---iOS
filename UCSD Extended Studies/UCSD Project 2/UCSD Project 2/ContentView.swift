//
//  ContentView.swift
//  UCSD Project 2
//
//  Created by Oliver Park on 7/31/24.
//

import SwiftUI

struct ContentView: View {
    @State var username: String
    @State private var isClicked: Bool = false
    @AppStorage ("savedName") var savedName: String = ""
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 50)
                    .foregroundStyle(.gray.opacity(0.4))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue.gradient, lineWidth: 2)
                    }
                
                TextField("Username", text: $username)
                    .font(.title3.bold())
                    .fontDesign(.rounded)
                    .frame(width: 300, height: 50)
                    .submitLabel(.done)
                    .padding()
            }
            
            Button {
                isClicked.toggle()
                savedName = username
            } label: {
                Text("SAVE")
                    .font(.title2)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .clipShape(.capsule)
                    .frame(width: 120, height: 50)
                    .overlay {
                        Capsule()
                            .stroke(.green.gradient, lineWidth: 10)
                    }
            }.alert("Saved!", isPresented: $isClicked) {
                Button("OK", role: .none) { }
            } message: {
                Text("Hello, \(savedName)")
            }
        }
    }
}

#Preview {
    ContentView(username: "Oliver" )
}
