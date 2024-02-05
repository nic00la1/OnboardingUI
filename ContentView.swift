//
//  ContentView.swift
//  OnboardingUI
//
//  Created by Nicola Kaleta on 05/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LeftPanelView()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
               maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
        
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
            
            Text("Cool isn't it?")
                .font(.system(size: 40))
                .bold()
            
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
        }
    }
}

#Preview {
    ContentView()
}
