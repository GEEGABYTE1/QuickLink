//
//  JobCreationView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI



var job_accounts = JobAccount()
var local_username_job: String = ""

struct JobCreationView: View {
    
    @State var job_username: String = ""
    @State var job_password: String = ""
    @State var job_languages: String = ""
    @State var job_experience: String = ""
    @State var job_contact: String = ""
    @State var job_skills: String = ""
    
    var body: some View {
        
        
        ZStack {
            
            AppColor.wall_color.ignoresSafeArea()
            
            VStack {
            
            Spacer()
            Text("Job Account Creation")
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                    
        
             
            TextField("Username", text: $job_username)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            SecureField("Password", text: $job_password)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
                
            TextField("Languages", text: $job_languages)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            TextField("Years of Experience", text: $job_experience)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
    
            TextField("Skills", text: $job_skills)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            TextField("Contact", text: $job_contact)
                .padding()
                .background(AppColor.box_color)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            
                /*
                NavigationLink(destination:BioView(), label:{
                    CreateAccountView()
                })
                */
                

            

                
            Spacer()
            }.padding()
            
            
        }  .navigationBarBackButtonHidden(true)
            
        
    }
        
}
struct JobCreationView_Previews: PreviewProvider {
    static var previews: some View {
        JobCreationView()
    }
}
