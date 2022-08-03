//
//  HomepageView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-01.
//

import SwiftUI



struct HomepageView: View {
    
    
    var body: some View {
        var _: () = update_statement(user: cur_username)
        if cur_username != "" && statement == "No. Hackathons won" {
            var _: () = set_default_vars(username: cur_username)
        } else if cur_username != "" && statement == "Years of Experience" {
            var _: () = set_default_vars_job(username: cur_username)
        }
        
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            
            VStack {
                Text("Your Homepage 🌈")
                
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                    .frame(height: 90)
                HStack{
                Spacer()
                        .frame(width: 200)
                    if statement == "Years of Experience" {
                        NavigationLink(destination:ConnectionMessageJobView(), label: {ConnectionsButtonView()})
                    } else {
                        NavigationLink(destination:ConnectionMessageView(), label: {ConnectionsButtonView()})
                    }
                
                
                }
                Spacer()
                    
                    
            }
            
            
            VStack{
                
                HStack {
                Text("Name: \(cur_username)")
                Spacer()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    Text("Languages: \(rel_languages)")
                    Spacer()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    
                    Text("\(statement): \(no_hackswon)")
                    Spacer()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    Text("Skills: \(rel_skills)")
                    Spacer()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    Text("Bio: \(rel_bio)")
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
                    .frame(height: 590)
                HStack {
                Spacer()
                        .frame(width: 72)
                NavigationLink(destination: HackathonUserView(), label: {HackathonUserButtonView()})
                Spacer()
                    NavigationLink(destination:JobUserView(), label: {JobUserButtonView()})
                Spacer()
                    .frame(width: 70)
                }
                
            }

            
        }
        
        
        
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
