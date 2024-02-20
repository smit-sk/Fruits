//
//  FruitsApp.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-19.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
