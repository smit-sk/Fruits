//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-21.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients:[String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox(){
            
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
           
        }// : GRP BX
       
    }
}

#Preview {
    FruitNutrientsView(fruit : fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
        .preferredColorScheme(.dark)
}
