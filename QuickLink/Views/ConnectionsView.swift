//
//  ConnectionsView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct ConnectionsView: View {
    @State var connection_message: String = ""
    @State var button_clicked: Bool = false
    var body: some View {
        
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            VStack {
              Spacer()
                    .frame(height: 30)
                Text("Send Your Connection")
                    .font(.title)
                    .padding(.leading)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Message  ☕️")
                    .font(.title)
                    .padding(.leading)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 20)
                
                
                TextEditor(text:$connection_message)
                    .padding()
                    .cornerRadius(75)
                    .frame(height: 500)
                    .foregroundColor(AppColor.alt_text_color)
                    .lineSpacing(20)
                
   
                Spacer()
                Button(action:{
                    if var username_connections = hackathon_accounts.accounts_connection_messages[rel_user] {
                        username_connections.append(connection_message)
                        print("Message Sent")
                    } else {
                        print("Message was sent and Account was Created")
                        hackathon_accounts.accounts_connection_messages[rel_user] = [connection_message]
                    }
                    button_clicked = true
                    
                    

                }, label: {
                    PublishAccountView()
                })
                
                
            NavigationLink(destination: SuccessMessageView(), isActive: .constant(button_clicked == true), label: {Text("")})
            

            }.padding()
            
        }
    }
}

struct ConnectionsView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsView()
    }
}
