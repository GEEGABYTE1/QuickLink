//
//  HackathonUserView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI


struct HackathonUserView: View {
    
    @State var next_button_clicked = false
    var body: some View {
        
        ZStack {
            
            AppColor.wall_color.ignoresSafeArea()
            VStack {
                Text("Hackathon 🌈")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                HStack{
                Spacer()
                        .frame(width: 200)
                    
                    Button(action: {
                        if next_button_clicked == true {
                            next_button_clicked = false
                        }
                        test_keys()
                        print("Next Counter Button Current: \(next_counter)")
                        if maximum == true && current_username == cur_username {
                            print("Couter Resetting from \(next_counter)")
                            next_counter = 0
                            
                            
                        } else {
                            next_counter += 1
                        }
                        
                        set_vars()
                        print("Next Button After Increment: \(next_counter)")
                        next_button_clicked = true
                    }, label: {NextPageButtonView()})
                    
                    NavigationLink(destination:CompletionAccountView(), isActive: .constant(maximum == true), label:{Text("")})
                    
                    NavigationLink(destination:HackathonUserView(), isActive: .constant(next_button_clicked == true && next_counter < usernames_list.count), label: {Text("")})
                    
                    
                }
                Spacer()
                    .frame(height: 620)
            }
            
            VStack {
                
                VStack{
                    
                    
                        
                    HStack {
                    Text("Name: \(current_username)")
                    Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("Languages: \(current_username_langauges)")
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("No. Hackathons won: \(current_username_hackathons)")
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("Skills: \(current_username_skills)")
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("Bio: \(current_username_bio)")
                        Spacer()
                    
                    }
                    

                }
                .padding()
                .font(.headline)
                .foregroundColor(AppColor.box_color)
                .frame(width: 360, height: 420)
                .background(Color.white)
                .cornerRadius(15.0)
                VStack {
                    Spacer()
                        .frame(height: 40)
                    NavigationLink(destination: ConnectionsView(), label: {SendConnectionMessageView()})
                    
                }
            }
        }
    }
}

struct HackathonUserView_Previews: PreviewProvider {
    static var previews: some View {
        HackathonUserView()
    }
}
