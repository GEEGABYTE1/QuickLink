//
//  ConnectionMessageView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct ConnectionMessageView: View {
    var body: some View {
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            VStack{
                
                HStack {
                Text("Name: \(cur_username)")
                Spacer()
                }
                Spacer()
                    .frame(height: 40)
                HStack {
                    Text("Message: \(rel_languages)")
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
        VStack {
            
        }
    


    }
}

struct ConnectionMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionMessageView()
    }
}
