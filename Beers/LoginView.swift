//
//  LoginView.swift
//  Beers
//
//  Created by jorgemht on 1/4/23.
//

import SwiftUI

struct LoginView: View {

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false

    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }

    var body: some View {
        NavigationStack {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                TextField("Username", text: $username)
                    .padding()
                
                SecureField("Password", text: $password)
                    .padding()
                
                Button(action: {
                    isLoggedIn = true
                }, label: {
                    Text("Login")
                })
            }
            .navigationDestination(
                isPresented: $isLoggedIn) {
                    MainView()
                }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
