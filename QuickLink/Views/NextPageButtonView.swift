//
//  NextPageButtonView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI

struct NextPageButtonView: View {
    
    var body: some View {
        Text("Next")
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 140, height: 20)
                .background(Color.green)
                .cornerRadius(15.0)
    }
}

struct NextPageButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextPageButtonView()
    }
}
