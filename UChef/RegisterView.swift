//
//  RegisterView.swift
//  UChef
//
//  Created by Daniel Li on 3/13/22.
//

import SwiftUI
import Firebase

struct RegisterView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = ""
    @State private var loginView = false
    @State private var showingAlert = false
    
    @State private var loginViewInstance = LoginView()
    @ObservedObject var globalLoginStatus: GlobalLogInStatus
    
    var body: some View {
        if loginView {
            loginViewInstance.transition(.opacity)
        }
        else {
            VStack {
                Spacer()
                VStack {
                    VStack {
                        Spacer()
                        Image("Group 10")
                            .offset(x: -140)
                            .offset(y: -110)
                        Text("Sign Up")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62))
                        .offset(x: -100)
                        .offset(y: -110)
                    }.offset(y: 25)
                    VStack {
                        VStack(spacing: 10) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.white)
                                    .frame(width: 334, height: 62)
                                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Group {
                                    if name.isEmpty {
                                        Text("Name")
                                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50))
                                        .offset(x: -90)
                                    }
                                    TextField("",text: $name)
                                        .foregroundColor(Color.black)
                                        .offset(x: 74)
                                }
                                Image("user")
                                    .offset(x: -140)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.white)
                                    .frame(width: 334, height: 62)
                                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Group {
                                    if email.isEmpty {
                                        Text("Email")
                                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50))
                                        .offset(x: -90)
                                    }
                                    TextField("",text: $email)
                                        .foregroundColor(Color.black)
                                        .offset(x: 76)
                                }
                                Image("email 1")
                                    .offset(x: -140)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.white)
                                    .frame(width: 334, height: 62)
                                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Group {
                                    if password.isEmpty {
                                        Text("Password")
                                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50))
                                        .offset(x: -73)
                                    }
                                    SecureField("",text: $password)
                                        .foregroundColor(Color.black)
                                        .offset(x: 76)
                                }
                                Image("password")
                                    .offset(x: -140)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.white)
                                    .frame(width: 334, height: 62)
                                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Group {
                                    if phoneNumber.isEmpty {
                                        Text("Phone Number")
                                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50))
                                        .offset(x: -52)
                                    }
                                    TextField("",text: $phoneNumber)
                                        .foregroundColor(Color.black)
                                        .offset(x: 76)
                                }
                                Image("Vector")
                                    .offset(x: -140)
                            }
                            HStack {
                                Text("Already a member?")
                                .font(.subheadline)
                                .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.70))
                                Button("login") {
                                    loginView = true
                                    globalLoginStatus.loginFailed = false
                                }
                            }.offset(x: 50)
                        }.offset(y: -65)
                        VStack {
                            
                            Button(action: {signUpUser(userEmail: email, userPassword: password)}
                                , label: {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 8)
                                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.18, green: 0.80, blue: 0.62), Color(red: 0.60, green: 0.92, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
                                            .frame(width: 334, height: 62)
                                            Text("Sign Up")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            )
                            .alert("Important message", isPresented: $showingAlert) {
                                Button("OK", role: .cancel) { }
                            }
                            Text("CMU Student Sign Up")
                            .font(.subheadline)
                            .frame(width: 207, height: 20, alignment: .topLeading)
                            .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.50))
                            .offset(x: 25)
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                .fill(Color.white)
                                .frame(width: 334, height: 62)
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(red: 0.01, green: 0.71, blue: 0.61), lineWidth: 1))
                                Image("image 1")
                            }
                        }.offset(y: -30)
                        Spacer()
                    }.offset(y: -30)
                }
            }
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .background(Color(red: 1, green: 0.98, blue: 0.93, opacity: 0.80))
            .ignoresSafeArea()
        }
    }
}

func signUpUser(userEmail: String, userPassword: String) {
    
    Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
        
    }
}

//struct RegisterView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterView()
//    }
//}
