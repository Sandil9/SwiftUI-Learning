//
//  OnboardingView.swift
//  Fructus
//
//  Created by Sandil Hussain on 12/10/2022.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    //MARK: Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5], id:\.id){ fruit in
                FruitCardView(fruit: fruit)
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
