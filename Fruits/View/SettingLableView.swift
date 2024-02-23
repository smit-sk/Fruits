//
//  SettingLableView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-23.
//

import SwiftUI

struct SettingLableView: View {
    
    var labelText : String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingLableView(labelText: "Fruits", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
