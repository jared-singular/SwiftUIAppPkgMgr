//
//  SignInView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 12/11/22.
//

import SwiftUI
import Singular

struct SignInView: View {
    @State var userID: String = ""
    
    var body: some View {
        VStack {
            SingularLogo()
            Text("Simulate the Authentication Path")
                .font(.system(size: 17.0))
            
            Group{
                Text("Enter a User ID")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 60, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                TextField("UserID", text: $userID)
                    .padding(EdgeInsets(top: 25, leading: 16, bottom: 52, trailing: 16))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: {
                // Code Here
                print("Button")
                
            }, label: {
                Text("Login")
            })
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(.blue)
            .tint(.white)
            .clipShape(RoundedRectangle(cornerRadius: 6))
            .frame(maxWidth: .infinity, minHeight: 44)
            Spacer()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
