//
//  OnBoardingView.swift
//  Tu on
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import SwiftUI

struct OnBoardingView: View {
    @AppStorage("onboarding") var isonboardingViewActive: Bool = true
    var body: some View {
        VStack(spacing: 30){
            Text("OnBoarding")
            
            Button {
                isonboardingViewActive = false
            } label: {
                Text("Start")
            }

        }
    }
}

#Preview {
    OnBoardingView()
}
