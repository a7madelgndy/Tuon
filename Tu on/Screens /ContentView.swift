//
//  ContentView.swift
//  Tu on
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isonboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isonboardingViewActive
            {
                OnBoardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
