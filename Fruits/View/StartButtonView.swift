//
//  StartButtonView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-19.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnBoarding: Bool?
    var body: some View {
        Button(action:{
            isOnBoarding = false
            print("Button Pressed")
        }){
            HStack(spacing:8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25 )
                )
        } //: BUTTON
        .accentColor(Color.white)
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
    }
