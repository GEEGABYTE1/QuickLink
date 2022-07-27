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
                
                Form {
                    Section {
                        TextField("Username", text: $username)

                            
                        SecureField("Password", text: $password)

                        
                            
                        TextField("Languages", text: $languages)

                            
                        TextField("No. of Hackathons Won", text: $no_hackathons_won)

                            .keyboardType(.numberPad)
                            .onReceive(Just(no_hackathons_won)) { newValue in
                                let filtered = newValue.filter { "0123456789".contains($0) }
                                if filtered != newValue {
                                    no_hackathons_won = filtered
                                }
                            }
                    
                        TextField("Hobbies", text: $hobbies)

                            
                        TextField("Skills", text: $skills)

                        
                    }
                    .padding()
                    .frame(height: 65)
                    
                
                    Section {
                        
                        NavigationLink(destination:BioView(hack_username: username, hack_password: password, hack_languages: languages, hack_no_hackathons_won: no_hackathons_won, hack_hobbies: hobbies, hack_skills: skills), label: {CreateAccountView()}
                        )
                        
                    }
                    



                }
                .background(AppColor.wall_color)
                .foregroundColor(AppColor.box_color)
                .accentColor(AppColor.box_color)
                .background(AppColor.wall_color)
                .onAppear { // ADD THESE
                  UITableView.appearance().backgroundColor = .clear
                }
                .onDisappear {
                  UITableView.appearance().backgroundColor = .systemGroupedBackground
                }

                
                
            
            
                

            
                


            

                
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
