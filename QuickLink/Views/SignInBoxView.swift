//
//  SignInView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI

struct SignInBoxView: View {
    
    let sign_in_box_color = AppColor.box_color
    
    var body: some View {
        HStack {
            Text("Sign in")
                .bold()
                .padding()
                .frame(height:55)
                .frame(width: 400)
                .foregroundColor(.white)
                
                
        }.background(sign_in_box_color)
        
    }
}




struct SignInBoxView_Previews: PreviewProvider {
    static var previews: some View {
        SignInBoxView()
    }
}
