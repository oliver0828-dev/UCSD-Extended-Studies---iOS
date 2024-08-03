//
//  View2.swift
//  UCSD Project 4
//
//  Created by Oliver Park on 8/2/24.
//

import SwiftUI

struct View2: View {
    @State var isZoomed = false
    
    var body: some View {
        VStack {
            Image(systemName: "cat.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .scaleEffect(isZoomed ? 1.5 : 1.0)
            
            Button {
                isZoomed.toggle()
            } label: {
                HStack {
                    Image(systemName: isZoomed ? "minus.magnifyingglass" : "plus.magnifyingglass")
                        .resizable()
                        .scaledToFit()
                    
                    Text(isZoomed ? "Zoom Out" : "Zoom In")
                    
                }
                .frame(width: 200, height: 50)
                .padding()
            }
        }
    }
}

#Preview {
    View2()
}
