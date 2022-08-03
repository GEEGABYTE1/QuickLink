//
//  ConnectionMessageView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct ConnectionMessageView: View {
    @State var next_button_clicked = false
    var body: some View {
        
        ZStack {
            //AppColor.wall_color.ignoresSafeArea()
            
            Spacer()
            VStack {
                Text("Connections 👻")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
            }
                VStack {
                    
                    Spacer()
                        .frame(height: 300)
                    HStack {
                        Button(action: {
                            if next_button_clicked == true {
                                next_button_clicked = false
                            }
                            filter_accounts()
                            
                            print("Next Counter Button Current: \(message_index)")
                            if message_iteration_max == true && current_username == cur_username {
                                print("Counter Resetting from \(message_index)")
                                message_index = 0
                            }
                            message_index += 1
                            fetch_messages()
                            print("Next Button After Increment: \(message_index)")
                            next_button_clicked = true
                        }, label: {NextPageButtonView()})
                        
                        NavigationLink(destination:CompletionAccountView(), isActive: .constant(message_index >= message_users.count), label:{Text("")})
                        
                        NavigationLink(destination:ConnectionMessageView(), isActive: .constant(next_button_clicked == true), label:{Text("")})
                        
                        
                    }
                
                }
                
            VStack {
                
                HStack {
                Text("Name: \(message_username)")
                Spacer()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    Text("Message: \(message_from_data)")
                    Spacer()
                }

            }
            .padding()
            .font(.headline)
            .foregroundColor(AppColor.box_color)
            .frame(width: 360, height: 220)
            .background(Color.white)
            .cornerRadius(15.0)
        }
        .background(Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))

    


    }
}

struct ConnectionMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionMessageView()
    }
}
