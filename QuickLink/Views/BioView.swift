//
//  BioView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-25.
//

import SwiftUI


struct BioView: View {
    
    @State var button_clicked: Bool = false
    @State var bio: String = ""
    var hack_username: String
    var hack_password: String
    var hack_languages: String
    var hack_no_hackathons_won: String
    
    var hack_skills: String
    
    
    
    
    init(hack_username: String, hack_password: String, hack_languages: String, hack_no_hackathons_won: String, hack_skills: String) {
        self.hack_username = hack_username
        self.hack_password = hack_password
        self.hack_languages = hack_languages
        self.hack_no_hackathons_won = hack_no_hackathons_won
        self.hack_skills = hack_skills
        
    }
    
        
    var body: some View {

        ZStack{
            AppColor.wall_color.ignoresSafeArea()
            VStack {
              Spacer()
                    .frame(height: 30)
                Text("Set Your Bio 🙌🏻")
                    .font(.title)
                    .padding(.leading)
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
                    hackathon_accounts.accounts_bio[self.hack_username] = bio
                    hackathon_accounts.accounts_hack[self.hack_username] = [self.hack_password, self.hack_languages, self.hack_no_hackathons_won, self.hack_skills]
                    print(hackathon_accounts)
                    button_clicked = true
                    

                }, label: {
                    PublishAccountView()
                })
                
                
            NavigationLink(destination: SuccessView(), isActive: .constant(button_clicked == true), label: { Text("")})

            }.padding()

            
    
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)

        
        
    }

}









struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        BioView(hack_username: "test user", hack_password: "test pass", hack_languages: "test langs", hack_no_hackathons_won: "test wins", hack_skills: "test skills")
    }
}
