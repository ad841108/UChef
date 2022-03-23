//
//  AccountView.swift
//  IoT_practice
//
//  Created by 张一苇 on 3/13/22.
//

import Foundation
import SwiftUI

struct ContentViewAccount: View  {
    @State private var name: String = "Dianna"
    @State private var accountAvatar: String = "Account_avatar"
    @State private var profile: String = "Mom of two, love cooking healty food!"
    @State private var numberOfLikes: Int = 10001
    @State private var dishesSold: Int = 1223
    @State private var rating: Double = 4.8
    let topDishes = ["top-dish-1", "top-dish-2", "top-dish-3"]
    var body: some View {
        VStack{
            VStack{
                ZStack(alignment: .bottom){
                    Rectangle()
                    .fill(Color.white)
                    .frame(width: 420, height: 125)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    
                    Text("Account")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(Color(red: 0.02, green: 0.75, blue: 0.62))
                        .padding(.bottom, 15)
                }.offset(y: -50)
        
                VStack{
                    ZStack (alignment: .top){
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 350, height: 220)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0.3726666271686554, blue: 0.7166666388511658, alpha: 0.30000001192092896)), radius:20, x:0, y:10)
                        .offset(y:-80)
                        
                        VStack(spacing:10){
                            //Avatar
                            Image(uiImage: #imageLiteral(resourceName: self.accountAvatar))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 82.6, height: 76.1)
                                .clipShape(Ellipse())
        
                        
                            //Name
                            Text(self.name)
                                .font(.title3)
                                .fontWeight(.heavy)
                            
                            //Profile Introduction
                            Text(self.profile)
                                .font(.custom("Roboto Regular", size: 24))
                                .multilineTextAlignment(.center)
                                .frame(width: 300)
                            
                            HStack (alignment: .center, spacing: 15){
                                ZStack{
                                    //Follow Button
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(#colorLiteral(red: 0.01568627543747425, green: 0.7490196228027344, blue: 0.615686297416687, alpha: 1)))
                                    .frame(width: 242, height: 48)
                                    
                                
                                    Text("Follow")
                                        .font(.title3)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .fontWeight(.heavy)
                                }
                                
                                ZStack{
                                    //Chat room entry
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 0.20000000298023224)))
                                    .frame(width: 51.1, height: 48.4)
                                    
                                    Image("Chat")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                }
                            }.padding(.top, 10)
                            
                        }.offset(y:-110)
       
                    }.offset(y: -20)
                    
                    HStack(alignment:.top, spacing: 20){
                        
                        ZStack(alignment:.top){
                            //Background for likes, dishes sold, rating
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.95, green: 0.45, blue: 0.34, opacity: 1.0))
                            .frame(width: 101, height: 250)
                            
                            
                            
                            Group{
                                VStack(alignment:.center, spacing:5){
                                    Text(String(self.numberOfLikes))
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                    
                                    //Likes
                                    Text("Likes")
                                        .font(.custom("Roboto Regular", size: 13))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                    
                                }
                            }.padding(.top, 15)
                            
                            Rectangle()
                                .fill(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                .frame(width: 55, height: 1)
                                .padding(.top, 80)
                            
                            Group{
                                VStack(alignment:.center, spacing:5){
                                    Text(String(self.dishesSold))
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                    
                                    //Likes
                                    Text("Dishes Sold")
                                        .font(.custom("Roboto Regular", size: 13))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                    
                                }
                            }.padding(.top, 100)
                            
                            Rectangle()
                                .fill(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                .frame(width: 55, height: 1)
                                .padding(.top, 165)
                            
                            Group{
                                VStack(alignment:.center, spacing:5){
                                    Text(String(self.rating))
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                    
                                    //Likes
                                    Text("Rating")
                                        .font(.custom("Roboto Regular", size: 13))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                    
                                }
                            }.padding(.top, 185)
                            
                            
                            
                        }
                        
                        VStack(alignment: .leading){
                            //Top Dishes
                            Text("Top Dishes")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                
                            ScrollView {
                                VStack(spacing: 20) {
                                    ForEach(topDishes ,id: \.self){
                                        Image($0)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 180, height: 80)
                                    }
                                    
                                }
                            }.frame(width: 210, height: 230)
                                .padding(.top, 20)
                        }

                    }.offset(y:-100)
                     
                    
                }.offset(y:90)

                
            }
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .background(Color(red: 1, green: 0.98, blue: 0.93, opacity: 0.59))
            .ignoresSafeArea()
            .offset(y: -20)
        }
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewAccount()
    }
}
