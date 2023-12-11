//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import Foundation
class NewItemViewViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}

    func save() {}

    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }

        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
}
