//
//  SourceLinkView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                    Spacer()
                Link("Wikipedia", destination: URL(string: "http://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote )
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
}
