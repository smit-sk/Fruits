//
//  SettingView.swift
//  Fruits
//
//  Created by SMIT KHOKHARIYA on 2024-02-23.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnBoarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators : false){
                VStack(spacing:20){
                    
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingLableView(labelText: "Fruits", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80 )
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essetial nutrients, including potassium dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                        
                    }

                    // MARK: - SECTION 2
                    GroupBox(
                        label: SettingLableView(labelText: "Customization" , labelImage: "paintbrush")
                        
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it sarts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding){
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                                    
                            } else{
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                            
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                            
                            
                        
                        
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label: SettingLableView(labelText: "Application ", labelImage: "apps.iphone") ){
                        SettingRowView(name: "Developer", content: "John / Jane")
                        SettingRowView(name: "Designer", content: "Robert Petras")
                        SettingRowView(name: "Compatibility", linklabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linklabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                        
                        
                    }
                    

                    
                }
            }// : SCROLL
            .navigationBarTitle("Settings", displayMode: .large)
            .navigationBarItems(
                trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
            )
            .padding()
        }//: NAVIGATION VIEW
    }
}

#Preview {
    SettingView()
}
