//
//  HomepageView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-01.
//

import SwiftUI



struct HomepageView: View {
        
    
    var body: some View {
        

        
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            
            
            VStack{
                HStack {
                Text("user")
                Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("Languages: ")
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("No. Hackathons won: ")
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("Skills: ")
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack {
                    Text("Bio: ")
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
