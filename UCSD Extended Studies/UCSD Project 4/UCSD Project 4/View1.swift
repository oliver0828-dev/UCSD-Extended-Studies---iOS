//
//  View1.swift
//  UCSD Project 4
//
//  Created by Oliver Park on 8/2/24.
//

import SwiftUI

struct View1: View {
    @State var color: Bool = false
    var body: some View {
        VStack {
            Image(systemName: "dog.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(color ? .blue : .red)
            Button {
                color.toggle()
            } label : {
                Text("Change Color")
                    .foregroundStyle(.white)
                    .frame(width: 120, height: 50)
                    .background(.blue.gradient)
                    .clipShape(.rect(cornerRadius: 20))
            }
        }
    }
}

#Preview {
    View1()
}
