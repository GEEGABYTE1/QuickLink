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
                    print("Current Username: \(cur_username)")
                    
                    
                    if var user_connections = hackathon_accounts.accounts_networks[cur_username] {
                        print("Account found")
                        
                        if var external_user_messages = user_connections[current_username] {
                            print("External Account found")
                            external_user_messages.append(connection_message)
                        } else {
                            print("External Account will be created")
                            user_connections[current_username] = [connection_message]
                        }
                        
                    } else {
                        print("Account being created")
                        hackathon_accounts.accounts_networks[cur_username] = ["Dummy Account" : [connection_message]]
                    }
                    print("Account Networks: \(hackathon_accounts.accounts_networks)")
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
