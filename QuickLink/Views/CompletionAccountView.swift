//
//  SwiftUIView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct CompletionAccountView: View {
    let home_color = AppColor.wall_color
    var body: some View {
        ZStack {
            //home_color.ignoresSafeArea()
            
            VStack {
                Text("Whoops, you reached the end. Sadly, there is nothing passed this point 🚫")
                    .bold()
                    .padding()
                    .font(.title)
                    .frame(height:600)
                    .frame(width:300)
                    .foregroundColor(.white)

                   
            }
        }
        .background(Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CompletionAccountView()
    }
}
