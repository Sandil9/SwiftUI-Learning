//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - Property
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }//: HSTACK
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }//: VSTACK
        }//: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
