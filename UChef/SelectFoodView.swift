//
//  SelectFoodView.swift
//  IoT_practice
//
//  Created by Fu Tan on 3/12/22.
//

import Foundation
import SwiftUI

struct SelectFoodView: View {
    @State private var confirmView = false
    @State private var confirmViewInstance = ConfirmView()
    @EnvironmentObject var globalIsOrdered: GlobalIsOrdered
    
    var body: some View {
        if confirmView {
            //            ConfirmView()
            confirmViewInstance
        }
        else {
            VStack {
                //Rectangle 28
                ScrollView(.vertical, showsIndicators: false) {
                    ZStack {
                        //                Rectangle()
                        //                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //                .frame(width: 375, height: 55)
                        //                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        Text("Creamy Tomato and Spinach Pasta").fontWeight(.bold).foregroundColor(Color(red: 0.01, green: 0.65, blue: 0.59))
                    }
                    
                    Image("Creamy Pasta Large").resizable().frame(width: 300, height: 200)
                    
                    HStack {
                        NavigationLink(destination: ContentViewAccount()) {
                            Image("seller4x").resizable().frame(width: 60, height: 60)
                        }
                        Text("Creamy Tomato and Spinach Pasta").foregroundColor(Color(red: 0.01, green: 0.65, blue: 0.59))
                    }
                    
                    HStack {
                        Text("Diana").offset(x:-135)
                    }
                    
                    HStack {
                        Image("star 1").resizable().frame(width: 20, height: 20).offset(x:-115)
                        Text("4.5").offset(x:-120)
                        Text("$6.99").fontWeight(.bold).offset(x: 100).foregroundColor(Color(red: 0.95, green: 0.45, blue: 0.34))
                    }
                    
                    //                ScrollView(.vertical, showsIndicators: false) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.10))
                            .frame(width: 334, height: 100)
                        Image("drag_handle").offset(x:-150, y: -40)
                        VStack (alignment: .leading){
                            Text("INGREDIENTS:").foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62)).offset(x: 40, y:17)
                            Text("PENNA PASTA, GARLIC, OLIVE OIL, TOMATOES, BASIL, SPINACH, CHEESE").frame(width: 334, height: 100)
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.10))
                            .frame(width: 334, height: 73)
                        Image("location_on (1)").offset(x:-150, y:-15)
                        Text("123 Forbes Ave").offset(y:-15)
                        Image("alarm").offset(x:-150, y:15)
                        Text("available at 7:30 pm").offset(y:15)
                    }.offset(y:-10)
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.10))
                            .frame(width: 334, height: 73)
                        Image("Note").offset(x:-140, y:-15)
                        Text("I’ll be there at 7:45!").offset(y: 0)
                        
                    }
                }.frame(maxHeight: 560)
                
                Spacer()
                //            NavigationView {
                //                NavigationLink(destination: ConfirmView()) {
                Button {
                    print("Button pressed")
                    globalIsOrdered.isOrdered = true
                    confirmView = true
                    //                    ConfirmView()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.18, green: 0.80, blue: 0.62), Color(red: 0.60, green: 0.92, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
                            .frame(width: 334, height: 62)
                        Text("Confirm").fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                }.offset(y:-15)
                //                }
                //            }
                
                //                Button {
                //                    print("Button pressed")
                //                } label: {
                //                    ZStack {
                //                        RoundedRectangle(cornerRadius: 8)
                //                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.18, green: 0.80, blue: 0.62), Color(red: 0.60, green: 0.92, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
                //                            .frame(width: 334, height: 62)
                //                        Text("Confirm").fontWeight(.bold)
                //                            .foregroundColor(Color.white)
                //                    }
                //                }
                //                .navigationTitle("")
                //                .navigationBarHidden(true)
                //            }
            }.offset(y: -10)
        }
    }
}


struct SelectFoodView_Previews: PreviewProvider {
    static var previews: some View {
        SelectFoodView()
    }
}
