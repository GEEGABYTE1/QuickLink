//
//  SuccessView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-01.
//

import SwiftUI

struct SuccessView: View {
    
    let home_color = AppColor.wall_color
    
    
    var body: some View {
        ZStack {
            //home_color.ignoresSafeArea()
            
            VStack {
                Text("Congratulations, your account is successfully made 🎆. You can now return to the home screen and Sign In 🦄")
                    .bold()
                    .padding()
                    .font(.title)
                    .frame(height:400)
                    .frame(width:300)
                    .foregroundColor(.white)
                    
                   
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .navigationViewStyle(.stack)
            .background(Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            
        }

        
        
        
        
        
        
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
