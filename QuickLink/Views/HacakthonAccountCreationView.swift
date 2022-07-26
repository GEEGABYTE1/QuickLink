//
//  HacakthonAccountCreationView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI
import Combine



var hackathon_accounts = HackathonAccount()


struct HackathonCreationView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var languages: String = ""
    @State var no_hackathons_won: String = ""
    @State var skills: String = ""
    var disableForm: Bool {
        username == "" || password == "" || languages == "" || no_hackathons_won == "" ||  skills == ""
    }
    

    
    
    var body: some View {
        

        
        
        ZStack {
            
            //AppColor.wall_color.ignoresSafeArea()
            
            VStack {
                
            
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
                

                            
                        TextField("Skills", text: $skills)

                        
                    }
                    .padding()
                    .frame(height: 65)

                    
                    
                    Section {
                        
                        NavigationLink(destination:BioView(hack_username: username, hack_password: password, hack_languages: languages, hack_no_hackathons_won: no_hackathons_won,hack_skills: skills), label: {Text("Create Your Account")
                                .foregroundColor(.green)
                                .multilineTextAlignment(.center)
                        }
                        )
                    }
                    .disabled(disableForm)
                    
            

                }
                //.background(AppColor.wall_color)
                .foregroundColor(AppColor.alt_text_color)
                .accentColor(AppColor.box_color)
                //.background(AppColor.wall_color)
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
        .background(Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
         
            
        
    }
    
        
}

struct HackathonCreationView_Previews: PreviewProvider {
    static var previews: some View {
        HackathonCreationView()
    }
}
