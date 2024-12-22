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
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.opacity(opacity) , lineWidth: 40)
                .frame(width: 260 , height: 260 ,alignment: .center)
            Circle()
                .stroke(Color.opacity(opacity) , lineWidth: 80)
                .frame(width: 260 , height: 260 ,alignment: .center)
        }//:zstack
        
    }
}

#Preview {
    ZStack {
        Color.blue.ignoresSafeArea()
        CircleGroup(Color: .white, opacity: 0.2)
    }
}
