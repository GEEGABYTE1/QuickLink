//
//  HackathonUserButtonView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct HackathonUserButtonView: View {
    //let button_color = Color(red:255/255, green:218/255, blue:185/255)
    var body: some View {
        Text("Hackathon")
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 140, height: 60)
                .background(AppColor.box_color)
                .cornerRadius(15.0)
    }
}

struct HackathonUserButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HackathonUserButtonView()
    }
}
