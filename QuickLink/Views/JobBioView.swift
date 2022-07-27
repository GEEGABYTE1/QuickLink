//
//  JobBioView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-26.
//
import SwiftUI

struct JobBioView: View {
    
    @State var job_bio: String = ""
    var j_username: String
    var j_password: String
    var j_languages: String
    var j_experience: String
    
    var j_skills: String
    
    init(j_username: String, j_password: String, j_languages: String, j_experience: String, j_skills: String) {
        self.j_username = j_username
        self.j_password =  j_password
        self.j_languages = j_languages
        self.j_experience = j_experience
        self.j_skills = j_skills
        
        
        
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
                
                
                TextEditor(text:$job_bio)
                    .padding()
                    .cornerRadius(75)
                    .frame(height: 500)
                    .foregroundColor(AppColor.alt_text_color)
                    .lineSpacing(20)
                
   
                Spacer()
                
                Button(action:{
                    job_accounts.accounts_job_bio[self.j_username] = job_bio
                    job_accounts.accounts_job[self.j_username] = [self.j_password, self.j_languages, self.j_experience]
                    print(job_accounts)

                    
                }, label: {
                    PublishAccountView()
                })
                
                
            }.padding()

        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct JobBioView_Previews: PreviewProvider {
    static var previews: some View {
        JobBioView(j_username: "Test user", j_password: "test pass", j_languages: "test langs", j_experience: "test experience", j_skills: "test skills")
    }
}
