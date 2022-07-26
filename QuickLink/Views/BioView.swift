//
//  BioView.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-07-25.
//

import SwiftUI


struct TextView: UIViewRepresentable {
    
    typealias UIViewType = UITextView
    var configuration = { (view: UIViewType) in }
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIViewType {
        UIViewType()
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<Self>) {
        configuration(uiView)
    }
}

struct BioView: View {
    
    @State var bio: String = ""
    
    var body: some View {
        
        ZStack{
            AppColor.wall_color.ignoresSafeArea()
            VStack {
                Text("Set Your Bio")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 20)
                
                
                TextEditor(text:$bio)
                    .padding()
                    .cornerRadius(75)
                    .frame(height: 700)
                    .foregroundColor(AppColor.alt_text_color)
                
   
                Spacer()
            }.padding()

        }
        .navigationBarBackButtonHidden(true)
    }
}









struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        BioView()
    }
}
