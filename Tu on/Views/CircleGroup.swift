//
//  CircleGroup.swift
//  Tu on
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import SwiftUI

struct CircleGroup: View {
    @State var Color : Color
    @State var opacity : Double
    @State private var isAnimating : Bool = false
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.opacity(opacity) , lineWidth: 40)
                .frame(width: 260 , height: 260 ,alignment: .center)
            Circle()
                .stroke(Color.opacity(opacity) , lineWidth: 80)
                .frame(width: 260 , height: 260 ,alignment: .center)
        }//:zstack
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeInOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
        }
        
    }
}

#Preview {
    ZStack {
        Color.blue.ignoresSafeArea()
        CircleGroup(Color: .white, opacity: 0.2)
    }
}
