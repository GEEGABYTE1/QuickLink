//
//  SuccessMessageView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct SuccessMessageView: View {
    
    let home_color = AppColor.wall_color
    var body: some View {
        ZStack {
            //home_color.ignoresSafeArea()
            
            VStack {
                Text("Connection Message Successfully Sent ✅")
                    .bold()
                    .padding()
                    .font(.title)
                    .frame(height:400)
                    .frame(width:300)
                    .foregroundColor(.white)
                   
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationViewStyle(.stack)
            .background(Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            
        }
    }
}

struct SuccessMessageView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessMessageView()
    }
}
