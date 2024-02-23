//
//  ContentView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-19.
//

import SwiftUI

struct ContentView: View {
    var fruits : [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
                .navigationTitle("Fruits")
                
                .navigationBarItems(
                    trailing:
                        Button(action:{
                            isShowingSettings = true
                        }){
                            Image(systemName: "slider.horizontal.3")
                        } // : BUTTON
                        .sheet(isPresented: $isShowingSettings){
                            SettingView()
                        }
                )
            }
        }// : NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
