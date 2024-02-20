//
//  FruitCardView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-19.
//

import SwiftUI

struct FruitCardView: View {
    var fruit : Fruit
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack() {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y : 8 )
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 6, y : 8)
                // FRUIT: HEADLINE
                
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                    
                // BUTTON: START
                
                StartButtonView()
                
            }//: VSTACK
            
        }//: ZSTACK
        .onAppear(){
            withAnimation(.easeOut(duration: 1)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
            startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}



#Preview {
    FruitCardView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 320, height: 640))
}
