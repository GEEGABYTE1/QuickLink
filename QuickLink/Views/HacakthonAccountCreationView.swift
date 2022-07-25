//
//  HacakthonAccountCreationView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI

struct HackathonCreationView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            VStack {

                Text("Hackathon Account Creation")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    
            Spacer()
             
            TextField("Username", text: $username)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            SecureField("Password", text: $username)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            Text("Create Your Account")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
                
            Spacer()
            }.padding()
            
            
        }  .navigationBarBackButtonHidden(true)
            
        
    }
        
}

struct HackathonCreationView_Previews: PreviewProvider {
    static var previews: some View {
        HackathonCreationView()
    }
}
