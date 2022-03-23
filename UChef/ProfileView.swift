//
//  ProfileView.swift
//  IoT_practice
//
//  Created by 张一苇 on 3/13/22.
//

import Foundation
import SwiftUI

struct ContentViewProfile: View {
    @State private var name: String = "Chris"
    @State private var profileAvatar: String = "Profile_avatar"
    @State private var profile: String = "Love to eat"
    @State private var numberOfLikes: Int = 23
    @State private var dishesSold: Int = 12
    @State private var rating: Double = 4.9
    let topDishes = ["top-dish-1", "top-dish-2", "top-dish-3"]
    var body: some View {
        VStack{
            VStack{
        
                VStack{
                    ZStack (alignment: .top){
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 370, height: 200)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0.3726666271686554, blue: 0.7166666388511658, alpha: 0.30000001192092896)), radius:20, x:0, y:10)
                        .offset(y:-80)
                        
                        VStack(spacing:10){
                            //Ellipse 1
                            Image(uiImage: #imageLiteral(resourceName: self.profileAvatar))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 92.6, height: 86.1)
                                .clipShape(Ellipse())
        
                        
                            //Dianna
                            Text(self.name)
                                .font(.title3)
                                .fontWeight(.heavy)
                            
                            //Mom of two, love cooking h...
                            Text(self.profile)
                                .font(.custom("Roboto Regular", size: 24))
                                .multilineTextAlignment(.center)
                                .frame(width: 300)
                            
                            HStack (alignment: .center, spacing: 15){
                                ZStack{
                                    //Follow link
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(#colorLiteral(red: 0.01568627543747425, green: 0.7490196228027344, blue: 0.615686297416687, alpha: 1)))
                                    .frame(width: 242, height: 48)
                                    
                                    // Follow
                                    Text("Follow")
                                        .font(.title3)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .fontWeight(.heavy)
                                }
                                
                                ZStack{
                                    //Chat Room Link
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 0.20000000298023224)))
                                    .frame(width: 51.1, height: 48.4)
                                    
                                    Image("Chat")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                }
                            }.padding(.top, 10)
                            
                        }.offset(y:-120)
       
                    }
                    
                    HStack(alignment:.top, spacing: 20){
                        
                        ZStack(alignment:.top){
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.73, green: 0.24, blue: 0.27, opacity: 1.0))
                            .frame(width: 101, height: 350)
                            
                            
                            
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
                            }.padding(.top, 35)
                            
                            Rectangle()
                                .fill(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                .frame(width: 55, height: 1)
                                .padding(.top, 110)
                            
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
                            }.padding(.top, 145)
                            
                            Rectangle()
                                .fill(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                .frame(width: 55, height: 1)
                                .padding(.top, 230)
                            
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
                            }.padding(.top, 260)
                            
                            
                            
                        }
                        
                        VStack(alignment: .leading){
                            //Top Dishes
                            Text("Top Dishes")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                
                            // TODO: modify this function to allow for double column
                            ScrollView {
                                VStack(spacing: 20) {
                                    ForEach(topDishes ,id: \.self){
                                        Image($0)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 180, height: 180)
                                    }
                                    
                                }
                            }.frame(width: 210, height: 230)
                                .padding(.top, 20)
                        }

                    }.offset(y:-70)
                     
                    
                }.offset(y:160)

                
            }
            .offset(y: -110)
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .background(Color(red: 1, green: 0.98, blue: 0.93, opacity: 0.59))
            .ignoresSafeArea()
        
        }
        
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewProfile()
    }
}
