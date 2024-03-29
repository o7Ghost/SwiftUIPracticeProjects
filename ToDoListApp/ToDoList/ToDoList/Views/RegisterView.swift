//
//  RegisterView.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()

    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)

            Form {
                TextField("Full Name", text: $viewModel.name).textFieldStyle(DefaultTextFieldStyle()).autocorrectionDisabled()

                TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle()).autocapitalization(.none).autocorrectionDisabled()

                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())

                TLButton(title: "Create Account", background: .green) {
                    print("CALLED?")
                    viewModel.register()
                }
            }.offset(y: -50)

            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
