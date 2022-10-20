//
//  AddTodoView.swift
//  Todo App
//
//  Created by Sandil Hussain on 20/10/2022.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - Properties
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    @State private var errorShowing: Bool = false
    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""
    
    let priorities = ["High", "Normal", "Low"]
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var managedObjectContext
    
    // MARK: - Function
    
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: - Todo Name
                    TextField("Todo", text: $name)
                    
                    // MARK: - Tod Priority
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id:\.self){
                            Text($0)
                        }
                    }//: PICKER
                    .pickerStyle(.segmented)
                    // MARK: - Save Button
                    Button {
                        if self.name != "" {
                            let todo = Todo(context: self.managedObjectContext)
                            todo.name = name
                            todo.priority = priority
                            do {
                                try self.managedObjectContext.save()
                            } catch {
                                print(error)
                            }
                        } else {
                            self.errorShowing = false
                            errorTitle = "Invalid Name"
                            errorMessage = "Make sure to enter something for \nthe new todo item."
                            return
                        }
                        self.presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Text("Save")
                    }

                }//: FORM
                Spacer()
            }//: VSTACK
            .navigationTitle("New Todo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
            }
            .alert(isPresented: $errorShowing) {
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
        }//: NAVIGATION
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
