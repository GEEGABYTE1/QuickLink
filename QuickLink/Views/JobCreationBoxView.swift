//
//  JobCreationBoxView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI

struct JobCreationBoxView: View {
    let sign_in_box_color = AppColor.box_color
    
    var body: some View {
        HStack {
            Text("Job")
                .bold()
                .padding()
                .frame(height:55)
                .frame(width: 400)
                .foregroundColor(.white)
                
                
        }.background(sign_in_box_color)
        
    }
}

struct JobCreationBoxView_Previews: PreviewProvider {
    static var previews: some View {
        JobCreationBoxView()
    }
}
