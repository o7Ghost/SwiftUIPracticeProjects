//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    init() {}

    func login() {}

    func validate() {}
}
