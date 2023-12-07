//
//  LiginView.swift
//  LoginScreen
//
//  Created by Мария Степанчук on 06.12.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    
    var body: some View {
        VStack {
            NavigationStack {
                ZStack{
                    Color.black
                        .ignoresSafeArea()
                    VStack{
                        Text("Sign in")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .padding()
                            .padding()
                        TextField("Username", text: $username)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width:300, height: 50)
                            .background(Color.white)
                            .background(Color.white.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red,width: CGFloat(wrongUsername))
                        SecureField("Password", text: $password)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width:300, height: 50)
                            .background(Color.white)
                            .background(Color.white.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red,width: CGFloat(wrongPassword))
                        Button("Login"){
                            autheticateUser(username: username, password: password)
                        }
                        .padding()
                        .padding()
                        .foregroundStyle(.black)
                        .frame (width: 170, height: 50)
                        .background(Color.orange)
                        .cornerRadius(10)
                        .padding()
                        Button("Register") {
                            
                        }
                        .foregroundStyle(.white)
                    }
                    .navigationBarBackButtonHidden(true)
                }
                .navigationBarBackButtonHidden(true)
                .navigationDestination(isPresented: $showingLoginScreen) {
                    NavigationStack {
                        TabBar()
                            .navigationBarBackButtonHidden(true)
                    }
                }
            }
        }
    }
    func autheticateUser(username: String, password: String){
        if username == ""{
            wrongUsername = 0
            if password == "123"{
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
            
        }
    }
    
    
}

#Preview {
    LoginView()
}
