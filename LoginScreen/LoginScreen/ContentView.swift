//
//  ContentView.swift
//  LoginScreen
//
//  Created by Мария Степанчук on 06.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    
    var body: some View {
        VStack {
            NavigationView {
                ZStack{
                    Color.black
                        .ignoresSafeArea()
                    VStack{
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
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
                        .foregroundColor(.black)
                        .frame (width: 170, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding()
                        
                        NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen){
                            EmptyView()
                        }
                        
                    }
                }
                
            }
                .navigationBarHidden(true)
        }
    }
    func autheticateUser(username: String, password: String){
        if username == "masha"{
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
    ContentView()
}
