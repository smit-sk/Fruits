//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-21.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red:0 ,green: 0 , blue: 0 , opacity: 0.5), radius: 10, x: 6, y :8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.5)

        }// ZSATCK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 1.5)){
                isAnimating = true
            }
        }
        
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height:340) )
}
