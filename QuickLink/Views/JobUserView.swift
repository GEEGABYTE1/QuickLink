//
//  JobUserView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import SwiftUI


struct JobUserView: View {
    
    @State var next_button_clicked = false
    var body: some View {
        
        ZStack {
            
            //AppColor.wall_color.ignoresSafeArea()
            VStack {
                Text("Job 🌈")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                HStack{
                Spacer()
                        .frame(width: 200)
                    
                    Button(action: {
                        if next_button_clicked == true {
                            next_button_clicked = false
                        }
                        test_keys_job()
                        print("Next Counter Button Current: \(next_j_counter)")
                        if maximum_job == true && current_username_job == cur_username {
                            print("Couter Resetting from \(next_j_counter)")
                            next_j_counter = 0
                            
                            
                        } else {
                            next_j_counter += 1
                        }
                        
                        set_vars_job()
                        print("Next Button After Increment: \(next_j_counter)")
                        next_button_clicked = true
                    }, label: {NextPageButtonView()})
                    
                    NavigationLink(destination:CompletionAccountView(), isActive: .constant(maximum_job == true), label:{Text("")})
                    
                    NavigationLink(destination:JobUserView(), isActive: .constant(next_button_clicked == true && next_j_counter < usernames_list_job.count), label: {Text("")})
                    
                    
                }
                Spacer()
                    .frame(height: 620)
            }
            
            VStack {
                
                VStack{
                    
                    
                        
                    HStack {
                    Text("Name: \(current_username_job)")
                    Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("Languages: \(current_username_langauges_job)")
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("Experience: \(current_username_hackathons_job)")
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("Skills: \(current_username_skills_job)")
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        Text("Bio: \(current_username_bio_job)")
                        Spacer()
                    
                    }
                    

                }
                .padding()
                .font(.headline)
                .foregroundColor(AppColor.box_color)
                .frame(width: 360, height: 420)
                .background(Color.white)
                .cornerRadius(15.0)
                VStack {
                    Spacer()
                        .frame(height: 40)
                    NavigationLink(destination: ConnectionsJobView(), label: {SendConnectionMessageView()})
                    
                }
            }
        }
        .background(Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}

struct JobsUserView_Previews: PreviewProvider {
    static var previews: some View {
        JobUserView()
    }
}
