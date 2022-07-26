//
//  PublishAccountView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-25.
//

import SwiftUI

struct PublishAccountView: View {
    var body: some View {
        Text("Publish")
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
    }
}

struct PublishAccountView_Previews: PreviewProvider {
    static var previews: some View {
        PublishAccountView()
    }
}
