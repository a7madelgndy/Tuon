//
//  OnBoardingView.swift
//  Tu on
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import SwiftUI

struct OnBoardingView: View {
    @AppStorage("onboarding") var isonboardingViewActive: Bool = true
    
    @State private var buttonWidth : Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating: Bool = false
    @State private var imageOffset: CGSize = .zero
    @State private var headerText: String = "Share"
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
     
            VStack {
                Spacer()
                //MARK: HEADER
                VStack(spacing: 0){
                    Text(headerText)
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
                .opacity(isAnimating ? 1 : 0)
                .offset(y:isAnimating ? 0 : -40)
                .animation(.easeIn(duration: 1),value: isAnimating)
               //MARK: CENTER
                ZStack {
                    CircleGroup(Color: .white, opacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1 : 0)
                        .offset(x: imageOffset.width * 1.2, y:0)
                        .animation(.easeInOut(duration: 0.5), value: isAnimating )
                        .gesture(
                            DragGesture()
                                .onChanged{ gesture in
                                  
                                        if abs(imageOffset.width) <= 150 {
                                            imageOffset = gesture.translation
                                            headerText = "Love"
                                        }
                                }
                                .onEnded {_ in
                                    
                                        imageOffset = .zero
                                        headerText = "Share"
                                }
                        ).animation(Animation.easeInOut(duration: 1) , value:  imageOffset)
                    //: Gesture
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
                            .frame(width:buttonOffset  + 80)
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
                            .offset(x: buttonOffset)
                            .gesture(
                                DragGesture()
                                    .onChanged{ gesture in
                                        if gesture.translation.width > 0 &&
                                        buttonOffset <= buttonWidth-80{
                                            buttonOffset = gesture.translation.width
                                        }
                                    }
                                    .onEnded { _ in
                                        withAnimation(Animation.easeOut(duration: 1)) {
                                            if buttonOffset > buttonWidth / 2 {
                                                buttonOffset = buttonWidth - 80
                                                    isonboardingViewActive = false
                                                
                                            }else {
                                                buttonOffset = 0
                                            }
                                        }
                                    }
                            )//:: Gesture
                     
                    Spacer()//: Hstack
                    }
                }//:Footer.
                .frame(width : buttonWidth , height: 80 , alignment: .center)
                .padding()
                .opacity(isAnimating ? 1 : 0)
                .offset(y:isAnimating ? 0 : 40 )
                .animation(.easeInOut(duration: 1), value: isAnimating)
             //
            }
        
            
        }//: ZSTACK
        .onAppear{
            isAnimating = true
        }
    }
}

#Preview {
    OnBoardingView()
}
