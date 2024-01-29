//
//  ToDoListItems.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]

//    private let userId: String

    init(userId: String) {
//        self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }

    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in ToDoListItemView(item: item)
                    .swipeActions { Button {
                        viewModel.delete(id: item.id)
                    } label: {
                        Text("Delete")
                    }}.tint(.red)
                }.listStyle(PlainListStyle())
            }.navigationTitle("To Do List").toolbar {
                Button {
                    viewModel.showingViewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingViewItemView) {
                NewItemView(newItemPresented: $viewModel.showingViewItemView)
            }
        }
    }
}

struct ToDoListItems_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "lBzi8bj0xUgJ2KBEOZ1zqwUT8Yt1")
    }
}
