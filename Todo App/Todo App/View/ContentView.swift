//
//  ContentView.swift
//  Todo App
//
//  Created by Sandil Hussain on 20/10/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // MARK: - Property
    @State private var showingAddTodoView: Bool = false
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: Todo.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Todo.name, ascending: true)]) var todos: FetchedResults<Todo>
    
    // MARK: - Function
    private func deleteTodo(at offsets: IndexSet) {
        for index in offsets {
            let todo = todos[index]
            viewContext.delete(todo)
            do {
                try viewContext.save()
            } catch {
                print(error)
            }
        }
    }
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(todos, id:\.self) { item in
                    HStack {
                        Text(item.name ?? "Unknown")
                        Spacer()
                        Text(item.priority ?? "Unknown")
                    }//: HSTACK
                }//: LOOP
                .onDelete(perform: deleteTodo)
            }//: LIST
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem {
                    Button {
                        self.showingAddTodoView.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $showingAddTodoView) {
                        AddTodoView()
                            .environment(\.managedObjectContext, self.viewContext)
                    }
                }
            }
            .navigationTitle("Todo")
            .navigationBarTitleDisplayMode(.inline)
            Text("Select an item")
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
