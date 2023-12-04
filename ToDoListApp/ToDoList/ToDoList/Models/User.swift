//
//  User.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
