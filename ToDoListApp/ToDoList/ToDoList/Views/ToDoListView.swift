//
//  ToDoListItems.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()

    private let userId: String

    init(userId: String) {
        self.userId = userId
    }

    var body: some View {
        NavigationView {
            VStack {}.navigationTitle("To Do List").toolbar {
                Button {} label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ToDoListItems_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}
