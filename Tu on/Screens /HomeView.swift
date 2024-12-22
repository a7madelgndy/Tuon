//
//  HomeView.swift
//  Tu on
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isonboardingViewActive: Bool = false
    var body: some View {
        VStack {
            Text("Home Screen")
            Button {
                isonboardingViewActive = true
            } label: {
                Text("Restart")
            }
        }//: Vstack
    }
}

#Preview {
    HomeView()
}
