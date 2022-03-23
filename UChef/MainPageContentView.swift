//
//  MainPageContentView.swift
//  IoT_practice
//
//  Created by Fu Tan on 3/12/22.
//

import Foundation
import SwiftUI

class GlobalIsOrdered: ObservableObject {
    @Published var isOrdered: Bool = false
}


struct MainPageContentView: View {
    @StateObject private var globalIsOrdered = GlobalIsOrdered()
    @ObservedObject var authManager: AuthManager
    
    var body: some View {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .environmentObject(globalIsOrdered)

                YourOrderView()
                    .tabItem {
                        Label("Order", systemImage: "doc.plaintext")
                    }
                
                PostFoodView()
                    .tabItem {
                        Label("Post", systemImage: "plus.circle.fill")
                    }
                
                ChatView()
                    .tabItem {
                        Label("Message", systemImage: "text.bubble")
                    }
                    .environmentObject(globalIsOrdered)
                
                ContentViewProfile(authManager: authManager)
                    .tabItem {
                        Label("Account", systemImage: "person.crop.circle")
                    }
            }
            .navigationBarHidden(true)
        }
    
//    // body
//    var body: some View {
//        VStack {
//            Group {
//                // Let say this is your sticky header
//
//                // search header
//                ZStack {
//                    HStack {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 20)
//                            .fill(Color(red: 0.77, green: 0.77, blue: 0.77, opacity: 0.24))
//                            .frame(width: 305, height: 37)
//
//                            // add a button
//                            HStack {
//                                Image(systemName: "magnifyingglass")
//                                Text("What are you looking for?")
//                            }
//                        }
//                        Button {
//                            print("profile")
//                        } label: {
//                            Image(systemName: "line.3.horizontal").frame(width: 40, height: 40)
//                        }
//                    }
//
//                }
//
//                // filter headers
//                HStack {
//                    // filter
//                    Button {
//                        print("Button pressed")
//                    } label: {
//                        ZStack {
//                            Image(systemName: "slider.horizontal.3")
//                        }
//                    }
//
//                    // food
//                    Button {
//                        print("Button pressed")
//                    } label: {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 20)
//                            .fill(Color(red: 0.02, green: 0.75, blue: 0.62))
//                            .frame(width: 53, height: 37)
//                            Text("Food")
//                        }
//                    }
//
//                    // ingredient
//                    Button {
//                        print("Button pressed")
//                    } label: {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 20)
//                            .fill(Color(red: 0.77, green: 0.77, blue: 0.77, opacity: 0.22))
//                            .frame(width: 80, height: 30)
//
//                            Text("Ingredient")
//                        }
//                    }
//
//                    // availability
//                    Button {
//                        print("Button pressed")
//                    } label: {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 20)
//                            .fill(Color(red: 0.77, green: 0.77, blue: 0.77, opacity: 0.22))
//                            .frame(width: 80, height: 30)
//
//                            Text("Availability")
//                        }
//                    }
//                }
//            }
//            ScrollView(.vertical, showsIndicators: false) {
//                // This is your long content wrap in here
//
//                ZStack {
//                    //Rectangle 1
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .frame(width: 343, height: 202)
//                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
//
//                    VStack {
//                        Image("Creamy Tomato and Spinach Pasta")
//
//                        //Creamy Tomato and Spinach Pasta
//                        Text("Creamy Tomato and Spinach Pasta").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
//
//                        HStack {
//                            Image("location_on")
//                            Text("1.5 mi")
//                            Divider()
//                            Image("star 1").resizable().frame(width: 20, height: 20)
//                            Text("4.5")
//
//                            Text("                    ")
//                            Text("US$ 6.99")
//                        }
//                    }
//
//                }
//
//                ZStack {
//                    //Rectangle 2
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .frame(width: 343, height: 202)
//                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
//
//                    VStack {
//                        Image("Fried rice")
//
//                        //Creamy Tomato and Spinach Pasta
//                        Text("Fried Rice").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
//
//                        HStack {
//                            Image("location_on")
//                            Text("3.5 mi")
//                            Divider()
//                            Image("star 1").resizable().frame(width: 20, height: 20)
//                            Text("4.7")
//
//                            Text("                    ")
//                            Text("US$ 4.59")
//                        }
//                    }
//
//                }
//
//                ZStack {
//                    //Rectangle 3
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .frame(width: 343, height: 202)
//                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
//
//                    VStack {
//                        Image("Chicken noodles")
//
//                        //Creamy Tomato and Spinach Pasta
//                        Text("Chicken Noodles").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
//
//                        HStack {
//                            Image("location_on")
//                            Text("9.5 mi")
//                            Divider()
//                            Image("star 1").resizable().frame(width: 20, height: 20)
//                            Text("4.3")
//
//                            Text("                    ")
//                            Text("US$ 3.99")
//                        }
//                    }
//
//                }
//
//                ZStack {
//                    //Rectangle 4
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .frame(width: 343, height: 202)
//                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
//
//                    VStack {
//                        Image("Creamy Tomato and Spinach Pasta")
//
//                        //Creamy Tomato and Spinach Pasta
//                        Text("Creamy Tomato and Spinach Pasta").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
//
//                        HStack {
//                            Image("location_on")
//                            Text("10.5 mi")
//                            Divider()
//                            Image("star 1").resizable().frame(width: 20, height: 20)
//                            Text("4.9")
//
//                            Text("                   ")
//                            Text("US$ 9.99")
//                        }
//                    }
//
//                }
//
//                ZStack {
//                    //Rectangle 5
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .frame(width: 343, height: 202)
//                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
//
//                    VStack {
//                        Image("Fried rice")
//
//                        //Creamy Tomato and Spinach Pasta
//                        Text("Fried Rice").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
//
//                        HStack {
//                            Image("location_on")
//                            Text("6.5 mi")
//                            Divider()
//                            Image("star 1").resizable().frame(width: 20, height: 20)
//                            Text("4.5")
//
//                            Text("                    ")
//                            Text("US$ 7.99")
//                        }
//                    }
//                }
//
//
//            }
//            Group {
//                // And this is your sticky footer
//                ZStack {
//
//                    Button {
//                        print("plus.circle.fill")
//                    } label: {
//                        Image(systemName: "plus.circle.fill").resizable().frame(width: 60, height: 60)
//                    }.offset(x: 150, y: -80)
//
//                    HStack {
//                        VStack {
//                            Image(systemName: "house").resizable().frame(width: 30, height: 30)
//                            Text("Home")
//                        }.offset(x:-40)
//
//                        VStack {
//                            Image(systemName: "doc.plaintext").resizable().frame(width: 30, height: 30)
//                            Text("Order")
//                        }.offset(x:-8)
//
//                        VStack {
//                            Image(systemName: "text.bubble").resizable().frame(width: 30, height: 30)
//                            Text("Message")
//                        }.offset(x:20)
//
//                        VStack {
//                            Image(systemName: "person.crop.circle").resizable().frame(width: 30, height: 30)
//                            Text("Account")
//                        }.offset(x:40)
//                    }
//                }
//            }
//        }
        
//    }
//     end body
}

//struct MainPageContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainPageContentView()
//    }
//}

