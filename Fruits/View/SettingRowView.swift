//
//  SettingRowView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-23.
//

import SwiftUI

struct SettingRowView: View {
    var name: String
    var content: String? = nil
    var linklabel: String? = nil
    var linkDestination: String? = nil
    
    
    var body: some View {
        VStack(){
            Divider().padding(.vertical, 4)
            HStack(){
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linklabel != nil && linkDestination != nil){
                    Link(linklabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
               
            }
        }
    }
}

#Preview {
    SettingRowView(name: "Developer", content: "John / Jane")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()

}
