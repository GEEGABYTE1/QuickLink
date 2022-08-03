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
                //AppColor.wall_color.ignoresSafeArea()
               
                VStack {
                    Text("Account Type 🕹")
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination:HackathonCreationView(), label:{HackathonAccountCreationBoxView()})


      
                    Spacer()
                        .frame(height: 20)
                        
                    NavigationLink(destination:JobCreationView(), label:{JobCreationBoxView()})
                        
                    Spacer()
                    
                    
                    
                }
                    
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .background(Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            

            
        }


        
        
        
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
