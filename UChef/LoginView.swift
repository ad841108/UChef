//
//  LoginView.swift
//  UChef
//
//  Created by Daniel Li on 3/13/22.
//

import SwiftUI
import Firebase

class GlobalLogInStatus: ObservableObject {
    @Published var loginFailed: Bool = false;
}

class AuthManager : ObservableObject {
    @Published var signedIn = false
}

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @ObservedObject var authManager = AuthManager()
    @StateObject private var globalLoginStatus = GlobalLogInStatus()
    
    var body: some View {
        if authManager.signedIn {
            MainPageContentView(authManager: authManager).transition(.opacity)
        }
        else {
            NavigationView {
                VStack {
                    ZStack{
                        Spacer()
                        Image("Rectangle 21")
                            .resizable()
                            .frame(width: 450, height: 450)
                            .offset(y: -150)
                        //uChef
                        Text("UChef").font(.custom("Post No Bills Jaffna SemiBold Regular", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .offset(x:130)
                            .offset(y:50)
                        Image("Group 4")
                            .offset(y: -100)
                    }
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color.white)
                                .frame(width: 334, height: 62)
                                .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                            Group {
                                if email.isEmpty {
                                    Text("email")
                                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50))
                                        .offset(x: -86)
                                }
                                TextField("",text: $email)
                                    .foregroundColor(Color.black)
                                    .offset(x: 79)
                            }
                            Image("email 1")
                                .offset(x: -140)
                        }.offset(y: -100)
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color.white)
                                .frame(width: 334, height: 62)
                                .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                            Group {
                                if password.isEmpty {
                                    Text("password")
                                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50))
                                        .offset(x: -70)
                                }
                                SecureField("",text: $password)
                                    .foregroundColor(Color.black)
                                    .offset(x: 78)
                            }
                            Image("password")
                                .offset(x: -140)
                        }.offset(y: -75)
                        Text("Forget Password ?")
                            .font(.subheadline)
                            .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.50))
                            .offset(x: 100)
                            .offset(y: -70)
                        Button(action: {login(userEmail: email, userPassword: password)
                        }
                        ) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.18, green: 0.80, blue: 0.62), Color(red: 0.60, green: 0.92, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
                                    .frame(width: 334, height: 62)
                                Text("Login")
                                    .foregroundColor(Color.white)
                            }.offset(y: -60)
                        }
                        if globalLoginStatus.loginFailed {
                            VStack {
                                Text("Wrong email or password")
                                    .font(.subheadline)
                                    .foregroundColor(Color.red)
                                HStack {
                                    Text("Don’t have an account?")
                                        .font(.subheadline)
                                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.50))
                                    NavigationLink(destination: RegisterView(globalLoginStatus: globalLoginStatus)) {
                                        Text("Register")
                                            .fontWeight(.bold)
                                            .font(.subheadline)
                                            .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.61))
                                    }
                                }
                            }.offset(y: -50)
                        } else {
                            HStack {
                                Text("Don’t have an account?")
                                    .font(.subheadline)
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.50))
                                NavigationLink(destination: RegisterView(globalLoginStatus: globalLoginStatus)) {
                                    Text("Register")
                                        .fontWeight(.bold)
                                        .font(.subheadline)
                                        .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.61))
                                }
                            }.offset(y: -50)
                        }
                    }
                    Spacer()
                }
                .background(Color(red: 1, green: 0.98, blue: 0.93, opacity: 0.54))
                .navigationBarHidden(true)
            }
            .navigationBarHidden(true)
        }
    }
    
    func login(userEmail: String, userPassword: String) {
        Auth.auth().signIn(withEmail: userEmail, password: userPassword) { (result, error) in
            if error != nil {
                self.globalLoginStatus.loginFailed = true
                print(error?.localizedDescription ?? "")
            } else {
                self.authManager.signedIn = true
                self.email = ""
                self.password = ""
                self.globalLoginStatus.loginFailed = false
                print("success")
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
