//
//  LoginView.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get things Done", angle: 15, background: .pink)

                Form {
                    TextField("Email Address", text: $viewModel.email).textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $viewModel.password).textFieldStyle(RoundedBorderTextFieldStyle())

                    TLButton(title: "Login", background: .blue) {}
                }

                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }.padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
