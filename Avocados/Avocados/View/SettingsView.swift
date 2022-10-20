//
//  SettingsView.swift
//  Avocados
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Property
    @State private var enableNotifications: Bool = true
    @State private var ebackgroundRefresh: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }//: VSTACK
            .padding()
            Form {
                //HEADER
                Section {
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable notifications")
                    }
                    Toggle(isOn: $ebackgroundRefresh) {
                        Text("Background refresh")
                    }
                } header: {
                    Text("General Settings")
                }//: SECTION
                //HEADER
                Section {
                    if enableNotifications {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }//: HSTACK
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone and iPad")
                        }//: HSTACK
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Sandil Hussain")
                        }//: HSTACK
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }//: HSTACK
                        HStack {
                            Text("Website")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        }//: HSTACK
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }//: HSTACK
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }//: HSTACK
                    
                } header: {
                    Text("General Settings")
                }//: SECTION
            }
            
        }//: VSTACK
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
