//
//  ConfirmView.swift
//  IoT_practice
//
//  Created by Fu Tan on 3/13/22.
//

import Foundation
import SwiftUI

struct ConfirmView: View {
   
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 1, green: 0.98, blue: 0.93, opacity: 0.80).ignoresSafeArea()
                VStack {
                    
                    //Rectangle 28
                    ZStack {
    //                    Rectangle()
    //                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
    //                        .frame(width: 375, height: 55)
    //                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        Text("Order Completed").fontWeight(.bold).foregroundColor(Color(red: 0.01, green: 0.65, blue: 0.59))
                    }
                    
                    Image("Creamy Pasta Large").resizable().frame(width: 300, height: 200)
                    
                    Text("Creamy Tomato and Spinach Pasta").fontWeight(.bold).foregroundColor(Color(red: 0.01, green: 0.65, blue: 0.59))
                    
                    Spacer()
                    Image("check-mark")
                    Text("Dianna is cooking the pasta").foregroundColor(Color(red: 0.95, green: 0.45, blue: 0.34))
                    Text("Your food would be ready in 20 minutes...").foregroundColor(Color(red: 0.95, green: 0.45, blue: 0.34))
                    
                    
                    
                    Spacer()
                    NavigationLink(destination: ChatView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.18, green: 0.80, blue: 0.62), Color(red: 0.60, green: 0.92, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
                                .frame(width: 334, height: 62)
                            Text("Contact Chef").bold()
                                .foregroundColor(Color.white)
                        }
                    }
                }.offset(y: -20)
                //        .frame(maxHeight: .infinity)
                //        .frame(maxWidth: .infinity)
                //        .background(Color(red: 1, green: 0.98, blue: 0.93, opacity: 0.80))
            }
            .navigationBarHidden(true)
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView()
    }
}
