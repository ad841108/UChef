//
//  ContentView.swift
//  Shared
//
//  Created by Fu Tan on 3/12/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var globalIsOrdered: GlobalIsOrdered
    
    // body
    var body: some View {
        
        //        Text("123")
        NavigationView {
            VStack {
                Group {
                    // Let say this is your sticky header
                    
                    // search header
                    ZStack {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(red: 0.77, green: 0.77, blue: 0.77, opacity: 0.24))
                                    .frame(width: 305, height: 37)
                                
                                // add a button
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                    Text("What are you looking for?")
                                }
                            }
                            Button {
                                print("profile")
                            } label: {
                                Image("menu 1")
                            }
                        }
                        
                    }
                    
                    // filter headers
                    HStack {
                        // filter
                        Button {
                            print("Button pressed")
                        } label: {
                            ZStack {
                                Image(systemName: "slider.horizontal.3")
                            }
                        }
                        
                        // food
                        Button {
                            print("Button pressed")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(red: 0.02, green: 0.75, blue: 0.62))
                                    .frame(width: 53, height: 37)
                                Text("Food")
                            }
                        }
                        
                        // ingredient
                        Button {
                            print("Button pressed")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(red: 0.77, green: 0.77, blue: 0.77, opacity: 0.22))
                                    .frame(width: 80, height: 30)
                                
                                Text("Ingredient")
                            }
                        }
                        
                        // availability
                        Button {
                            print("Button pressed")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(red: 0.77, green: 0.77, blue: 0.77, opacity: 0.22))
                                    .frame(width: 80, height: 30)
                                
                                Text("Availability")
                            }
                        }
                    }
                }
                
                //            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    // This is your long content wrap in here
                    //                    NavigationView {
                    //
                    //                    }
                    NavigationLink(destination: SelectFoodView()
                                    .environmentObject(globalIsOrdered)) {
                        ZStack {
                            //Rectangle 1
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 343, height: 202)
                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                            
                            VStack {
                                ZStack {
                                    Image("Creamy Tomato and Spinach Pasta")
                                    Image("seller").offset(x:-150, y: 50)
                                }
                                
                                //Creamy Tomato and Spinach Pasta
                                Text("Creamy Tomato and Spinach Pasta").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
                                
                                HStack {
                                    Image("location_on")
                                    Text("1.5 mi")
                                    Divider()
                                    Image("star 1").resizable().frame(width: 20, height: 20)
                                    Text("4.5")
                                    
                                    Text("                    ")
                                    Text("US$ 6.99")
                                }
                            }
                        }
                    }
                    
                    NavigationLink(destination: SelectFoodView()) {
                        ZStack {
                            //Rectangle 1
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 343, height: 202)
                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                            
                            VStack {
                                ZStack {
                                    Image("Creamy Tomato and Spinach Pasta")
                                    Image("seller").offset(x:-150, y: 50)
                                }
                                
                                //Creamy Tomato and Spinach Pasta
                                Text("Creamy Tomato and Spinach Pasta").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
                                
                                HStack {
                                    Image("location_on")
                                    Text("1.5 mi")
                                    Divider()
                                    Image("star 1").resizable().frame(width: 20, height: 20)
                                    Text("4.5")
                                    
                                    Text("                    ")
                                    Text("US$ 6.99")
                                }
                            }
                        }
                    }
                    
                    ZStack {
                        //Rectangle 2
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 343, height: 202)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        
                        VStack {
                            ZStack {
                                Image("Fried rice")
                                Image("seller").offset(x:-150, y: 50)
                            }
                            
                            //Creamy Tomato and Spinach Pasta
                            Text("Fried Rice").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
                            
                            HStack {
                                Image("location_on")
                                Text("3.5 mi")
                                Divider()
                                Image("star 1").resizable().frame(width: 20, height: 20)
                                Text("4.7")
                                
                                Text("                    ")
                                Text("US$ 4.59")
                            }
                        }
                        
                    }
                    
                    ZStack {
                        //Rectangle 3
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 343, height: 202)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        
                        VStack {
                            ZStack {
                                Image("Chicken noodles")
                                Image("seller").offset(x:-150, y: 50)
                            }
                            
                            //Creamy Tomato and Spinach Pasta
                            Text("Chicken Noodles").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
                            
                            HStack {
                                Image("location_on")
                                Text("9.5 mi")
                                Divider()
                                Image("star 1").resizable().frame(width: 20, height: 20)
                                Text("4.3")
                                
                                Text("                    ")
                                Text("US$ 3.99")
                            }
                        }
                        
                    }
                    
                    ZStack {
                        //Rectangle 4
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 343, height: 202)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        
                        VStack {
                            ZStack {
                                Image("Creamy Tomato and Spinach Pasta")
                                Image("seller").offset(x:-150, y: 50)
                            }
                            
                            //Creamy Tomato and Spinach Pasta
                            Text("Creamy Tomato and Spinach Pasta").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
                            
                            HStack {
                                Image("location_on")
                                Text("10.5 mi")
                                Divider()
                                Image("star 1").resizable().frame(width: 20, height: 20)
                                Text("4.9")
                                
                                Text("                   ")
                                Text("US$ 9.99")
                            }
                        }
                        
                    }
                    
                    ZStack {
                        //Rectangle 5
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 343, height: 202)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        
                        VStack {
                            ZStack {
                                Image("Fried rice")
                                Image("seller").offset(x:-150, y: 50)
                            }
                            
                            //Creamy Tomato and Spinach Pasta
                            Text("Fried Rice").font(.custom("Roboto Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.01, green: 0.65, blue: 0.59, alpha: 1)))
                            
                            HStack {
                                Image("location_on")
                                Text("6.5 mi")
                                Divider()
                                Image("star 1").resizable().frame(width: 20, height: 20)
                                Text("4.5")
                                
                                Text("                    ")
                                Text("US$ 7.99")
                            }
                        }
                    }
                }
            }
            .navigationTitle("back")
            .navigationBarHidden(true)
        }
    }  // end body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
