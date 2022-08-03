//
//  ConnectionMessageJobView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct ConnectionMessageJobView: View {
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
                            filter_accounts_job()
                            
                            print("Next Counter Button Current: \(message_index_job)")
                            if message_iteration_max_job == true && current_username_job == cur_username {
                                print("Counter Resetting from \(message_index_job)")
                                message_index_job = 0
                            }
                            message_index_job += 1
                            fetch_messages_job()
                            print("Next Button After Increment: \(message_index_job)")
                            next_button_clicked = true
                        }, label: {NextPageButtonView()})
                        
                        NavigationLink(destination:CompletionAccountView(), isActive: .constant(message_index_job >= message_users_job.count), label:{Text("")})
                        
                        NavigationLink(destination:ConnectionMessageJobView(), isActive: .constant(next_button_clicked == true), label:{Text("")})
                        
                        
                    }
                
                }
                
            VStack {
                
                HStack {
                Text("Name: \(message_username_job)")
                Spacer()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    Text("Message: \(message_from_data_job)")
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

struct ConnectionMessageJobView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionMessageJobView()
    }
}
