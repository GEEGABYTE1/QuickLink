//
//  ConnectionsButtonView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct ConnectionsButtonView: View {
    let button_color = Color(red:189/255, green:224/255, blue:254/255)
    var body: some View {
        Text("Connections")
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 140, height: 20)
                .background(button_color)
                .cornerRadius(15.0)
    }
}

struct ConnectionsButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsButtonView()
    }
}
