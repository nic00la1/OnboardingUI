//
//  ContentView.swift
//  OnboardingUI
//
//  Created by Nicola Kaleta on 05/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animateLeftPanel = false
    @State private var animateLeftPanelContents = false
    
    var body: some View {
        ZStack{
            LeftPanelView()
                .offset(x: animateLeftPanel ? (-UIScreen.main.bounds.width / 100) : -UIScreen.main.bounds.width)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0), value: animateLeftPanel)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
               maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
        .onAppear {
            animateLeftPanel.toggle()
        }
        
    }
    
    @ViewBuilder
    private func LeftPanelView() -> some View {
        VStack {
            LeftPanelContents()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.yellow)
        .padding(.trailing, 100)
    }
    
    @ViewBuilder
    private func LeftPanelContents() -> some View {
        VStack(alignment: .leading, spacing: 80) {
            Text("nic00la1's App")
                .font(.system(size: 30))
                .bold()
                .opacity(0.4)
                .offset(y: animateLeftPanelContents ? (-UIScreen.main.bounds.width / 100) : -UIScreen.main.bounds.width)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 30.0, damping: 10, initialVelocity: 0), value: animateLeftPanelContents)
            
            Text("Cool isn't it?")
                .font(.system(size: 40))
                .bold()
                .scaleEffect(animateLeftPanelContents ? CGSize(width: 1.0, height: 1.0) : CGSize(width: 0.0, height: 0.0))
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 30.0, damping: 10, initialVelocity: 0), value: animateLeftPanelContents)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack {
                    Text("Love it")
                        .foregroundStyle(.white)
                        .bold()
                    
                    Image(systemName: "arrow.right")
                        .foregroundStyle(.white)
                }
            })
            .frame(width: 150, height: 50)
            .background(.black)
            .clipShape(Capsule())
            .offset(y: animateLeftPanelContents ? (UIScreen.main.bounds.width / 100) : UIScreen.main.bounds.width)
            .animation(.interpolatingSpring(mass: 1.0, stiffness: 30.0, damping: 10, initialVelocity: 0), value: animateLeftPanelContents)
        }
        .onAppear {
            animateLeftPanelContents.toggle()
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
