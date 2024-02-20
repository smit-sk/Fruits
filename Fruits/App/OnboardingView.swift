//
//  OnboardingView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-19.
//

import SwiftUI

struct OnboardingView: View {
    var fruits : [Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
