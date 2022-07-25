//
//  SignUpView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI



struct SignUpView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                AppColor.wall_color.ignoresSafeArea()
               
                VStack {
                    Text("Account Type")
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination:HacakthonAccountCreationView(), label:{HackathonAccountCreationBoxView()})
                    Spacer()
                    
                    
                }
                    
            }
            
        }

        
        
        
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
