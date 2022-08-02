//
//  JobUserButtonView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct JobUserButtonView: View {
    let button_color = Color(red:255/255, green:218/255, blue:185/255)
    var body: some View {
        Text("Job")
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 140, height: 60)
                .background(button_color)
                .cornerRadius(15.0)
    }
}

struct JobUserButtonView_Previews: PreviewProvider {
    static var previews: some View {
        JobUserButtonView()
    }
}
