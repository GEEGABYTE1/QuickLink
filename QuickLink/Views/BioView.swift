//
//  BioView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-25.
//

import SwiftUI


struct BioView: View {
    
    @State var bio: String = ""
    
    var body: some View {
        
        ZStack{
            AppColor.wall_color.ignoresSafeArea()
            VStack {
                Text("Set Your Bio")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 20)
                
                
                TextEditor(text:$bio)
                    .padding()
                    .cornerRadius(75)
                    .frame(height: 500)
                    .foregroundColor(AppColor.alt_text_color)
                    .lineSpacing(20)
                
   
                Spacer()
                
                Button(action:{
                    hackathon_accounts.accounts_bio[local_username] = bio
                    print(hackathon_accounts)

                    
                }, label: {
                    CreateAccountView()
                })
                
                
            }.padding()

        }
        .navigationBarBackButtonHidden(true)
    }
}









struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        BioView()
    }
}
