//
//  HacakthonAccountCreationView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI



var hackathon_accounts = HackathonAccount()

struct HackathonCreationView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var languages: String = ""
    @State var no_hackathons_won: String = ""
    @State var hobbies: String = ""
    @State var skills: String = ""
    
    
    
    
    var body: some View {
        
        ZStack {
            AppColor.wall_color.ignoresSafeArea()
            VStack {

                Text("Hackathon Account Creation")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    
            Spacer()
             
            TextField("Username", text: $username)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            SecureField("Password", text: $password)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
                
            TextField("Languages", text: $languages)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            TextField("No. of Hackathons Won", text: $no_hackathons_won)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
        
            TextField("Hobbies", text: $hobbies)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            TextField("Skills", text: $skills)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            
                Button(action:{
                    hackathon_accounts.accounts_hack[username] = [password, languages, no_hackathons_won, hobbies ,skills]
                    print(hackathon_accounts)

                    
                }, label: {
                    CreateAccountView()
                })

            

                
            Spacer()
            }.padding()
            
            
        }  .navigationBarBackButtonHidden(true)
            
        
    }
        
}

struct HackathonCreationView_Previews: PreviewProvider {
    static var previews: some View {
        HackathonCreationView()
    }
}
