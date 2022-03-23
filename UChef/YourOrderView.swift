//
//  YourOrderView.swift
//  IoT_practice
//
//  Created by Fu Tan on 3/12/22.
//

import Foundation
import SwiftUI

struct YourOrderView: View {
    var body: some View {
        
        VStack {
            Group {
                Text("Your Orders")
            }
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Image("Creamy Pasta square")
                    VStack (alignment: .leading){
                        Text("Creamy Tomato and Spinach Pasta")
                        Text("$3.99")
                        Text("Mar 10 - Completed")
                    }
                    Button {
                        print("rate")
                    } label: {
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
                HStack {
                    Image("Creamy Pasta square")
                    VStack (alignment: .leading){
                        Text("Creamy Tomato and Spinach Pasta")
                        Text("$3.99")
                        Text("Mar 10 - Completed")
                    }
                    Button {
                        print("rate")
                    } label: {
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
                HStack {
                    Image("Creamy Pasta square")
                    VStack (alignment: .leading){
                        Text("Creamy Tomato and Spinach Pasta")
                        Text("$3.99")
                        Text("Mar 10 - Completed")
                    }
                    Button {
                        print("rate")
                    } label: {
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
                HStack {
                    Image("Creamy Pasta square")
                    VStack (alignment: .leading){
                        Text("Creamy Tomato and Spinach Pasta")
                        Text("$3.99")
                        Text("Mar 10 - Completed")
                    }
                    Button {
                        print("rate")
                    } label: {
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
        }
    }
}


struct YourOrderView_Previews: PreviewProvider {
    static var previews: some View {
        YourOrderView()
    }
}
