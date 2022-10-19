//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    @AppStorage("lineCount") var lineCount: Int = 1
    // MARK: - Function
    func getDocumentDirctory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
    func save() {
//        dump(notes)
        do {
            let data = try JSONEncoder().encode(notes)
            let url = getDocumentDirctory().appendingPathComponent("notes")
            try data.write(to: url)
        } catch {
            print("Saving data has failed")
        }
    }
    func load() {
        DispatchQueue.main.async {
            do {
                let url = getDocumentDirctory().appendingPathComponent("notes")
                let data = try Data(contentsOf: url)
                notes = try JSONDecoder().decode([Note].self, from: data)
            } catch {
               print("Catching error")
            }
        }
    }
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
            save()
        }
    }
    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center, spacing: 6) {
                    TextField("Add New Note", text: $text)
                    
                    Button {
                        guard text.isEmpty == false else {
                            return
                        }
                        let note = Note(id: UUID(), text: text)
                        notes.append(note)
                        text = ""
                        save()
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(.plain)
                    .foregroundColor(.accentColor)
                    
    //                .buttonStyle(BorderedButtonStyle(tint: .accentColor))
                }//: HSTACK
                Spacer()
                
                if notes.count >= 1 {
                    List {
                        ForEach(0..<notes.count, id:\.self) { i in
                            NavigationLink(destination: DetailView(note: notes[i], count: notes.count, index: i)) {
                                HStack {
                                    Capsule()
                                        .frame(width: 4)
                                        .foregroundColor(.accentColor)
                                    Text(notes[i].text)
                                        .lineLimit(lineCount)
                                        .padding(.leading, 5)
                                }
                            }
                        }//: LOOP
                        .onDelete(perform: delete)
                    }
                } else {
                    Spacer()
                    Image(systemName: "note.text")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                        .opacity(0.25)
                        .padding(25)
                    Spacer()
                }//: LIST
            }//: VSTACK
            .navigationTitle("Notes")
            .onAppear {
                load()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
