//
//  HomepageView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-01.
//

import SwiftUI

let fetched_cache = fetch_account_data(user: cur_username)
public var rel_languages: String = fetched_cache[1]
public var no_hackswon: String = fetched_cache[2]
public var rel_skills: String = fetched_cache[3]
public var rel_bio: String = fetch_account_bio(user: cur_username)
struct HomepageView: View {

    let fetched_current_data = fetch_account_data(user: cur_username)
    
    var body: some View {
        

        
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            
            
            VStack{
                HStack {
                Text(rel_languages)
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
