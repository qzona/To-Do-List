//
//  AddItemView.swift
//  To-Do List
//
//  Created by Student on 1/12/22.
//

import SwiftUI

struct AddItemView: View {
    @ObservedObject var toDoList: ToDoList
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let priorities = ["High", "Medium", "Low"]
    var body: some View {
        NavigationView {
                   Form {
                       Picker("Priority", selection: $priority) {
                           ForEach(Self.priorities, id: \.self) { priority in
                               Text(priority)
                           }
                       }
                   }
               }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(toDoList: ToDoList())
    }
}
