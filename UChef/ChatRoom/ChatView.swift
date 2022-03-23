//
//  Chat.swift
//  UChef
//
//  Created by Daniel Li on 3/13/22.
//

import SwiftUI

struct ChatView: View {
    
    @StateObject var messagesManager = MessagesManager()
    @EnvironmentObject var globalIsOrdered: GlobalIsOrdered
    
    var body: some View {
        if !globalIsOrdered.isOrdered {
            Text("You haven't place any oreder yet")
        } else {
            VStack {
                VStack {
                    TitleRow()
                    
                    ScrollViewReader { proxy in
                        ScrollView {
                            ForEach(messagesManager.messages, id: \.id) { message in
                                MessageBubble(message: message)
                            }
                        }
                        .padding(.top, 10)
                        .background(.white)
                        .cornerRadius(30, corners: [.topLeft, .topRight]) // Custom cornerRadius modifier added in Extensions file
                        .onChange(of: messagesManager.lastMessageId) { id in
                            // When the lastMessageId changes, scroll to the bottom of the conversation
                            withAnimation {
                                proxy.scrollTo(id, anchor: .bottom)
                            }
                        }
                    }
                }
                .background(Color.white)
                
                MessageField()
                    .environmentObject(messagesManager)
            }
            .navigationBarHidden(true)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
