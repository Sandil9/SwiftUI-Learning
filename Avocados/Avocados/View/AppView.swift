//
//  AppView.swift
//  Avocados
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadoView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }//: TAB
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
