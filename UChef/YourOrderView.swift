//
//  YourOrderView.swift
//  IoT_practice
//
//  Created by Fu Tan on 3/12/22.
//

import Foundation
import SwiftUI

struct YourOrderView: View {
    
    
    @State private var ratingView = false
    @State private var ratingViewInstance = RatingView()
    
    var body: some View {
        NavigationView {
            
            VStack {
//                Group {
//                    Text("Your Orders")
//                }
                ScrollView(.vertical, showsIndicators: false) {
                    
                    NavigationLink (destination: RatingView()) {
                        HStack {
                            Image("Creamy Pasta square")
                            VStack (alignment: .leading){
                                Text("Creamy Tomato and Spinach Pasta").foregroundColor(Color.black)
                                Text("$3.99").foregroundColor(Color.black)
                                Text("Mar 10 - Completed").foregroundColor(Color.black)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
                                    .frame(width: 75, height: 28)
                                Text("Rate")
                            }
                        }
                    }
                    Divider()
                    //
                    NavigationLink (destination: RatingView()) {
                        HStack {
                            Image("Creamy Pasta square")
                            VStack (alignment: .leading){
                                Text("Creamy Tomato and Spinach Pasta").foregroundColor(Color.black)
                                Text("$3.99").foregroundColor(Color.black)
                                Text("Mar 09 - Completed").foregroundColor(Color.black)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
                                    .frame(width: 75, height: 28)
                                Text("Rate")
                            }
                        }
                    }
                    Divider()
                    //
                    NavigationLink (destination: RatingView()) {
                        HStack {
                            Image("Creamy Pasta square")
                            VStack (alignment: .leading){
                                Text("Creamy Tomato and Spinach Pasta").foregroundColor(Color.black)
                                Text("$3.99").foregroundColor(Color.black)
                                Text("Mar 08 - Completed").foregroundColor(Color.black)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
                                    .frame(width: 75, height: 28)
                                Text("Rate")
                            }
                        }
                    }
                    Divider()
                    //
                    NavigationLink (destination: RatingView()) {
                        HStack {
                            Image("Creamy Pasta square")
                            VStack (alignment: .leading){
                                Text("Creamy Tomato and Spinach Pasta").foregroundColor(Color.black)
                                Text("$3.99").foregroundColor(Color.black)
                                Text("Mar 07 - Completed").foregroundColor(Color.black)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
                                    .frame(width: 75, height: 28)
                                Text("Rate")
                            }
                        }
                    }
                    Divider()
                    //
                }
                .navigationTitle("Your Orders")
            }
        }
        //        if ratingView {
        ////            ratingViewInstance
        //            RatingView()
        //        }
        //        else {
        //            VStack {
        //                Group {
        //                    Text("Your Orders")
        //                }
        //                ScrollView(.vertical, showsIndicators: false) {
        //                    HStack {
        //                        Image("Creamy Pasta square")
        //                        VStack (alignment: .leading){
        //                            Text("Creamy Tomato and Spinach Pasta")
        //                            Text("$3.99")
        //                            Text("Mar 10 - Completed")
        //                        }
        //                        Button {
        //                            print("rate")
        //                            ratingView = true
        //                        } label: {
        //                            ZStack {
        //                                RoundedRectangle(cornerRadius: 8)
        //                                .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
        //                                .frame(width: 75, height: 28)
        //                                Text("Rate")
        //                            }
        //                        }
        //                    }
        //                    Divider()
        //                    //
        //                    HStack {
        //                        Image("Creamy Pasta square")
        //                        VStack (alignment: .leading){
        //                            Text("Creamy Tomato and Spinach Pasta")
        //                            Text("$3.99")
        //                            Text("Mar 10 - Completed")
        //                        }
        //                        Button {
        //                            print("rate")
        //                            ratingView = true
        //                        } label: {
        //                            ZStack {
        //                                RoundedRectangle(cornerRadius: 8)
        //                                .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
        //                                .frame(width: 75, height: 28)
        //                                Text("Rate")
        //                            }
        //                        }
        //                    }
        //                    Divider()
        //                    //
        //                    HStack {
        //                        Image("Creamy Pasta square")
        //                        VStack (alignment: .leading){
        //                            Text("Creamy Tomato and Spinach Pasta")
        //                            Text("$3.99")
        //                            Text("Mar 10 - Completed")
        //                        }
        //                        Button {
        //                            print("rate")
        //                            ratingView = true
        //                        } label: {
        //                            ZStack {
        //                                RoundedRectangle(cornerRadius: 8)
        //                                .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
        //                                .frame(width: 75, height: 28)
        //                                Text("Rate")
        //                            }
        //                        }
        //                    }
        //                    Divider()
        //                    //
        //                    HStack {
        //                        Image("Creamy Pasta square")
        //                        VStack (alignment: .leading){
        //                            Text("Creamy Tomato and Spinach Pasta")
        //                            Text("$3.99")
        //                            Text("Mar 10 - Completed")
        //                        }
        //                        Button {
        //                            print("rate")
        //                            ratingView = true
        //                        } label: {
        //                            ZStack {
        //                                RoundedRectangle(cornerRadius: 8)
        //                                .fill(Color(red: 0.77, green: 0.77, blue: 0.77))
        //                                .frame(width: 75, height: 28)
        //                                Text("Rate")
        //                            }
        //                        }
        //                    }
        //                    Divider()
        //                    //
        //                }
        //            }
        //        }
    }
}


struct YourOrderView_Previews: PreviewProvider {
    static var previews: some View {
        YourOrderView()
    }
}
