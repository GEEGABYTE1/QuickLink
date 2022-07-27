//
//  JobBioView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-26.
//
import SwiftUI


struct JobBioView: View {
    
    @State var job_bio: String = ""
    
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
                    job_accounts.accounts_job_bio[local_username_job] = job_bio
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
        JobBioView()
    }
}
