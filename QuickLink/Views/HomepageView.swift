//
//  HomepageView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-01.
//

import SwiftUI



struct HomepageView: View {
    
    
    var body: some View {
        
        if cur_username != "" {
            var update_homepage: () = set_default_vars(username: cur_username)
        }
        
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            
            
            VStack{
                HStack {
                Text(cur_username)
                Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("Languages: \(rel_languages)")
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("No. Hackathons won: \(no_hackswon)")
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("Skills: \(rel_skills)")
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("Bio: \(rel_bio)")
                    Spacer()
                }
            }
            .padding()
            .font(.headline)
            .foregroundColor(AppColor.box_color)
            .frame(width: 360, height: 520)
            .background(Color.white)
            .cornerRadius(15.0)

            
        }
        
        
        
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
