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
            VStack(spacing: 30) {

                BeerShape()
                    .stroke()
                    .frame(width: 175, height: 175)
                    .foregroundStyle(
                        LinearGradient(gradient:
                                        Gradient(
                                            colors: [.orangeXA, .orangeStrongXA]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing
                                      )
                    )
                    .cornerRadius(10)
                    .padding(.top)

                Spacer()

                VStack(alignment: .leading, spacing: 15) {
                    Text("Username")
                        .font(.body.bold())

                    TextField("Username", text: $username)
                        .padding()
                        .textFieldBordered()
                        .font(.body)

                }
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 15) {
                    Text("Password")
                        .font(.body.bold())

                    SecureField("Password", text: $password)
                        .padding()
                        .textFieldBordered()
                        .font(.body)
                }
                .padding(.horizontal)

                Spacer()

                Button {

                } label: {
                    Text("Sign In")
                }
                .buttonStyle(MainButtonStyle())
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

// Adaptive Layouts => Con ViewThatFits podemos seleccionar uno de varios diseños posibles en función de lo que se ajuste al espacio de pantalla disponible. Una forma fantástica de asegurarnos de que nuestra app se vea bien en cualquier pantalla.

//NavigationStack {
//
//    ViewThatFits {
//
//        HStack(spacing: 25) {
//            BeerShape()
//                .stroke()
//                .frame(width: 175, height: 175)
//                .foregroundStyle(
//                    LinearGradient(gradient:
//                                    Gradient(
//                                        colors: [.orangeXA, .orangeStrongXA]),
//                                   startPoint: .topLeading,
//                                   endPoint: .bottomTrailing
//                                  )
//                )
//                .cornerRadius(10)
//                .padding(.top)
//
//            VStack(alignment: .center, spacing: 30) {
//                VStack(alignment: .leading, spacing: 15) {
//                    Text("Username")
//                        .font(.body.bold())
//
//                    TextField("Username", text: $username)
//                        .padding()
//                        .textFieldBordered()
//                        .font(.body)
//
//                }
//                .padding(.horizontal)
//
//                VStack(alignment: .leading, spacing: 15) {
//                    Text("Password")
//                        .font(.body.bold())
//
//                    SecureField("Password", text: $password)
//                        .padding()
//                        .textFieldBordered()
//                        .font(.body)
//                }
//                .padding(.horizontal)
//
//                Button {
//
//                } label: {
//                    Text("Sign In")
//                }
//                .buttonStyle(MainButtonStyle())
//            }
//            .frame(minWidth: 500)
//        }
//
//        VStack(spacing: 50) {
//
//            BeerShape()
//                .stroke()
//                .frame(width: 175, height: 175)
//                .foregroundStyle(
//                    LinearGradient(gradient:
//                                    Gradient(
//                                        colors: [.orangeXA, .orangeStrongXA]),
//                                   startPoint: .topLeading,
//                                   endPoint: .bottomTrailing
//                                  )
//                )
//                .cornerRadius(10)
//                .padding(.top)
//
//            Spacer()
//
//            VStack(alignment: .leading, spacing: 15) {
//                Text("Username")
//                    .font(.body.bold())
//
//                TextField("Username", text: $username)
//                    .padding()
//                    .textFieldBordered()
//                    .font(.body)
//
//            }
//            .padding(.horizontal)
//
//            VStack(alignment: .leading, spacing: 15) {
//                Text("Password")
//                    .font(.body.bold())
//
//                SecureField("Password", text: $password)
//                    .padding()
//                    .textFieldBordered()
//                    .font(.body)
//            }
//            .padding(.horizontal)
//
//            Spacer()
//
//            Button {
//
//            } label: {
//                Text("Sign In")
//            }
//            .buttonStyle(MainButtonStyle())
//        }
//        .navigationDestination(
//            isPresented: $isLoggedIn) {
//                MainView()
//            }
//            .padding()
//
//    }
//    }


// Before ViewThatFits => GeometryReader

