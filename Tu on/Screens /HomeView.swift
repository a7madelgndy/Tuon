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
            //MARK: HEADER
             Spacer()
            ZStack {
                CircleGroup(Color: .gray, opacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            
            //MARK: CENTER
            Text("The Time That Leads To Mastery Is Dependent On The Intensity Of Our Focus")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            
            //MARK: FOOTER
            Button {
                isonboardingViewActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            }.buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
        }//: Vstack
    }
}

#Preview {
    HomeView()
}
