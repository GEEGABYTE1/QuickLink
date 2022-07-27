//
//  HacakthonAccountCreationView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI
import Combine



var hackathon_accounts = HackathonAccount()
var local_username: String = ""


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
            
            Spacer()
                    .frame(height: 60)
                
            
            Text("Hackathon Account")
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                    
             
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
                .keyboardType(.numberPad)
                .onReceive(Just(no_hackathons_won)) { newValue in
                    let filtered = newValue.filter { "0123456789".contains($0) }
                    if filtered != newValue {
                        no_hackathons_won = filtered
                    }
                }
        
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
                
                
            
            
                
            NavigationLink(destination:BioView(hack_username: username, hack_password: password, hack_languages: languages, hack_no_hackathons_won: no_hackathons_won, hack_hobbies: hobbies, hack_skills: skills), label: {CreateAccountView()}
            )
            
                


            

                
            Spacer()
            }.padding()
            
            
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)
         
            
        
    }
        
}

struct HackathonCreationView_Previews: PreviewProvider {
    static var previews: some View {
        HackathonCreationView()
    }
}
