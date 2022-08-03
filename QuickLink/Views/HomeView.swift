//
//  ContentView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-24.
//

import SwiftUI

struct HomeView: View {
    
    let home_color = AppColor.wall_color

    
    
    
    var body: some View {
        NavigationView {
            ZStack {

                //home_color.ignoresSafeArea()
            VStack {
                Text("QuickLink")
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                Text("Developer Connections Made Easier")
                    .font(.subheadline)
                    .foregroundColor(.white)
                Spacer()
                NavigationLink(destination: SignInView(), label: {SignInBoxView()})
                Spacer()
                    .frame(height:20)
                NavigationLink(destination: SignUpView(), label: {SignUpBoxView()})
                Spacer()
                    
                
                
            }
            
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .navigationViewStyle(.stack)
            
                
                
                

            }.background(Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))

            

            
        }


        
        

 
            
            
            
    }
        
        
        
        
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
