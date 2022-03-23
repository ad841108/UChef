//
//  PostFoodView.swift
//  UChef
//
//  Created by Daniel Li on 3/13/22.
//

import SwiftUI

struct PostFoodView: View {
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Text("Post your meal")
                .fontWeight(.heavy)
                .font(.title)
                .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62))
                .offset(y: 20)
                ZStack {
                    Rectangle()
                    .fill(Color.white)
                    .frame(width: 375, height: 136)
                    HStack {
                        Image("Group 11")
                        Text("You can upload up to 10 photos").font(.custom("Roboto ExtraBold", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.63, green: 0.63, blue: 0.63, alpha: 1)))
                    }
                }.offset(y: 20)
                VStack(spacing: 15) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .frame(width: 334, height: 62)
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Text("Title")
                                .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50)).offset(x: -99)
                        Image("card_giftcard")
                            .offset(x: -140)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .frame(width: 334, height: 62)
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Text("Description")
                                .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50)).offset(x: -72)
                        Image("drag_handle")
                            .offset(x: -140)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .frame(width: 334, height: 62)
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Text("Quantity")
                                .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50)).offset(x: -81)
                        Image("package (1) 1")
                            .offset(x: -140)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .frame(width: 334, height: 62)
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Text("Pick up time")
                                .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50)).offset(x: -67)
                        Image("location_on")
                            .offset(x: -140)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .frame(width: 334, height: 62)
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.01, green: 0.65, blue: 0.59)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                Text("Address")
                                .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62, opacity: 0.50)).offset(x: -80)
                        Image("Vector")
                            .offset(x: -140)
                    }
                }.offset(y:30)
            }
            .offset(y: -15)
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.75, blue: 0.62), Color(red: 0.18, green: 0.80, blue: 0.62), Color(red: 0.60, green: 0.92, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
                .frame(width: 334, height: 62)
                Text("Submit")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            }.offset(y: 25)
            Spacer()
        }
        .offset(y: -110)
        .frame(maxHeight: .infinity)
        .frame(maxWidth: .infinity)
        .background(Color(red: 1, green: 0.98, blue: 0.93, opacity: 0.59))
        .ignoresSafeArea()
    }
}

struct PostFoodView_Previews: PreviewProvider {
    static var previews: some View {
        PostFoodView()
    }
}
