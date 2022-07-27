//
//  JobCreationView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI
import Combine



var job_accounts = JobAccount()


struct JobCreationView: View {
    
    @State var job_username: String = ""
    @State var job_password: String = ""
    @State var job_languages: String = ""
    @State var job_experience: String = ""
    // @State var job_contact: String = ""
    @State var job_skills: String = ""
    var disableJobForm: Bool {
        job_username == "" || job_password == "" || job_languages == "" || job_experience == "" || job_skills == ""
    }
    
    var body: some View {
        ZStack {
            
            AppColor.wall_color.ignoresSafeArea()
            
            VStack {
                
            
            Text("Job Account")
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
                Form {
                    Section {
                        TextField("Username", text: $job_username)

                            
                        SecureField("Password", text: $job_password)

                        
                            
                        TextField("Languages", text: $job_languages)

                            
                        TextField("Years of Experience", text: $job_experience)
                            .keyboardType(.numberPad)
                            .onReceive(Just(job_experience)) { newValue in
                                let filtered = newValue.filter { "0123456789".contains($0) }
                                if filtered != newValue {
                                    job_experience = filtered
                                }
                            }


                            
                        TextField("Skills", text: $job_skills)
                        
    
                        
                        
                    }
                    .padding()
                    .frame(height: 65)
                    
                    
                    
                    
                    Section {
                        
                        NavigationLink(destination:JobBioView(j_username: job_username, j_password: job_password, j_languages: job_languages, j_experience: job_experience, j_skills: job_skills), label: {Text("Create Your Account")
                                .foregroundColor(.green)
                                .multilineTextAlignment(.center)
                        }
                        )
                    }
                    .disabled(disableJobForm)
                    
            

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
struct JobCreationView_Previews: PreviewProvider {
    static var previews: some View {
        JobCreationView()
    }
}
