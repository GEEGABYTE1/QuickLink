import SwiftUI
import Combine




struct SignInView: View {
    @State var button_clicked: Bool = false
    @State var sign_in_result: Bool = false
    @State var sign_in_user: String = ""
    @State var sign_in_pass: String = ""
    var disableForm: Bool {
        sign_in_user == "" || sign_in_pass == ""
    }
    

    
    
    var body: some View {
        

        
        
        ZStack {
            
            AppColor.wall_color.ignoresSafeArea()
            
            VStack {
                
            
            Text("Sign in")
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
                Form {
                    Section {
                        TextField("Username", text: $sign_in_user)

                            
                        SecureField("Password", text: $sign_in_pass)
                        
                        
                    }
                    .padding()
                    .frame(height: 65)
                    .disabled(disableForm)

                        
                    NavigationLink(destination: HomepageView(), isActive: .constant(verify_account(user: sign_in_user, pass: sign_in_pass) == true), label: {Text("Sign in").foregroundColor(.green).multilineTextAlignment(.center)})
                        
                    
                    
                    
                    
                    
            

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
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)
         
            
        
    }
        
}

struct SiginView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
