//
//  StartButtonView.swift
//  Fructus
//
//  Created by Sandil Hussain on 12/10/2022.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: Property
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //MARK: Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        }//:Button
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
