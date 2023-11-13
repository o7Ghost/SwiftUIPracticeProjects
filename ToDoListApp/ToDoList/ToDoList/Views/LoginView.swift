//
//  LoginView.swift
//  ToDoList
//
//  Created by Joseph Lu on 11/12/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        NavigationView {
            VStack {
                HeaderView()

                Form {
                    TextField("Email Address", text: $email).textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())

                    Button {} label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue)
                            Text("Log in").foregroundColor(Color.white).bold()
                        }
                    }
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
