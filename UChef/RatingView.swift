//
//  RatingView.swift
//  IoT_practice
//
//  Created by Fu Tan on 3/13/22.
//

import SwiftUI

struct RatingView: View {
    @State private var review: String = ""
    @State private var stringOfTextField: String = String()
    
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack {
                    //                Rectangle()
                    //                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    //                .frame(width: 375, height: 55)
                    //                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    Text("Rate your order").fontWeight(.bold).foregroundColor(Color(red: 0.01, green: 0.65, blue: 0.59))
                }
                Image("Creamy Pasta Large").resizable().frame(width: 300, height: 200)
                
                
                Text("Creamy Tomato and Spinach Pasta").foregroundColor(Color(red: 0.01, green: 0.65, blue: 0.59))
                
                Text("How was the meal from Dianna?").font(.largeTitle).foregroundColor(Color.black).fixedSize(horizontal: false, vertical: true)
                
                HStack {
                    VStack (alignment: .leading){
                        Image("seller4x").resizable().frame(width: 60, height: 60)
                        Text("Diana")
                        HStack {
                            Image("star 1").resizable().frame(width: 20, height: 20)
                            Text("4.5")
                            
                        }
                    }
                }
                
                VStack (alignment: .leading){
                    Text("Write a review").offset(x:30)
                    ZStack {
//                        RoundedRectangle(cornerRadius: 20)
//                            .fill(Color.white)
//                            .frame(width: 334, height: 98)
//                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                        Group {
                            if review.isEmpty {
//                                Text("Review (Optional)")
//                                    .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50))
                            }
//                            TextField("", text: $review)
//                                .foregroundColor(Color.black)
                            TextField("Enter your review . . .", text: $stringOfTextField)
                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                                        .padding()
                        }
                    }
                }
                Button {
                    print("Submit review")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.18, green: 0.80, blue: 0.62), Color(red: 0.60, green: 0.92, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
                            .frame(width: 334, height: 62)
                        Text("Submit").bold()
                            .foregroundColor(Color.white)
                    }
                }
                Spacer()
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
