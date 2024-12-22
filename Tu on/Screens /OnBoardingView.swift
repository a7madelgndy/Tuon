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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
     
            VStack {
                Spacer()
                //MARK: HEADER
                VStack(spacing: 0){
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        
                    Text("""
                         It's not how much we give but
                         how muxh love we put into giving.
                         """)
                    .font(.title3)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal , 10)
                }//: HEADER
             
               //MARK: CENTER
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2) , lineWidth: 40)
                            .frame(width: 260 , height: 260 ,alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2) , lineWidth: 80)
                            .frame(width: 260 , height: 260 ,alignment: .center)
                    }//:zstack
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }//:CENTER
                Spacer()
              //MARK: Footer
                ZStack{
                   //custom Button parts
                   // 1.BackGroun (Static)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                   //2.Call-To-Action (Static)
                    Text("Get Started")
                        .font(.system(.title3 , design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x:20)
                   //3-capule (Dynamic Width)
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }
                 //4.Circle (Draggable)
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            
                            Circle()
                                .fill((.black.opacity(0.15)))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                                
                                    
                        }.foregroundColor(.white)
                            .frame(width: 80 , height: 80 , alignment: .center)
                            .onTapGesture {
                                isonboardingViewActive = false
                            }
                    Spacer()//: Hstack
                    }
                }//:Footer.
                .frame(height: 80 , alignment: .center)
                .padding()
             //
            }
            
  
            
            
        }//: ZSTACK
        
    }
}

#Preview {
    OnBoardingView()
}
