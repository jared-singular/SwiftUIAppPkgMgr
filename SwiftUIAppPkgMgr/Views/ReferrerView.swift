//
//  ReferrerView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 12/11/22.
//

import SwiftUI
import Singular

struct ReferrerView: View {
    @State var referrerName: String = ""
    @State var referrerID: String = ""
    
    var body: some View {
        VStack {
            SingularLogo()
            Text("Create a Referral Short Link")
                .font(.system(size: 17.0))
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
            Group{
                Text("Enter a Referrer Name")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 33, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                TextField("UserID", text: $referrerName)
                    .padding(EdgeInsets(top: 25, leading: 16, bottom: 0, trailing: 16))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Group{
                Text("Enter a Referrer ID")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 33, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                TextField("UserID", text: $referrerID)
                    .padding(EdgeInsets(top: 25, leading: 16, bottom: 54, trailing: 16))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: {
                // Code Here
                print("Button")
                
            }, label: {
                Text("Share Link")
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

struct ReferrerView_Previews: PreviewProvider {
    static var previews: some View {
        ReferrerView()
    }
}
