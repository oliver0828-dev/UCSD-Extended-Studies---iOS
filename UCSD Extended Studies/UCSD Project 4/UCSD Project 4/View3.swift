//
//  View3.swift
//  UCSD Project 4
//
//  Created by Oliver Park on 8/2/24.
//

import SwiftUI

struct View3: View {
    @State var isRotated = false
    var body: some View {
        VStack {
            Image(systemName: "airpodspro.chargingcase.wireless.radiowaves.left.and.right.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: isRotated ? 180 : 0))
            
            Button {
                isRotated.toggle()
            } label: {
                HStack {
                    Image(systemName: "rectangle.landscape.rotate")
                        .resizable()
                        .scaledToFit()
                    Text("Rotate")
                }
                .frame(width: 200, height: 50)
                .padding()
            }
        }
    }
}

#Preview {
    View3()
}
