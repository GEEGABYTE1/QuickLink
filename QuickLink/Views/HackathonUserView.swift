//
//  HackathonUserView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct HackathonUserView: View {
    
    
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
                NavigationLink(destination:HackathonUserView(), label: {NextPageButtonView()})
                
                }
                Spacer()
                    .frame(height: 620)
            }
            
            VStack {
                
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
                        Text("No. Hackathons won: \(no_hackswon)")
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
