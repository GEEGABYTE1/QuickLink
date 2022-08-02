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
            home_color.ignoresSafeArea()
            
            VStack {
                Text("Whoops, you reached the end. Sadly, as fun as it sounds, there is nothing much beyond this point 🚫")
                    .bold()
                    .padding()
                    .font(.title)
                    .frame(height:200)
                    .frame(width:300)
                    .foregroundColor(.white)
                   
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CompletionAccountView()
    }
}
