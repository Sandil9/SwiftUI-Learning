//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct DetailView: View {
    // MARK: - Property
    let note: Note
    let count: Int
    let index: Int
    @State private var isCreditPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            
            HeaderView(title: "")
            
            Spacer()
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented) {
                        SettingsView()
                    }
                Spacer()
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditPresented) {
                        CreditsView()
                    }
            }//: HSTACK
            .foregroundColor(.secondary)
        }//: VSTACK
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello world")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
