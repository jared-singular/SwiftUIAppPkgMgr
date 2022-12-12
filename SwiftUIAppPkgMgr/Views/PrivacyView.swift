//
//  PrivacyView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 12/11/22.
//

import SwiftUI
import Singular

struct PrivacyView: View {
    @State private var gdpr = false
    @State private var ccpa = false
    @State var idfa: String = ""
    @State var idfv: String = UIDevice().identifierForVendor!.uuidString
    
    var body: some View {
        
        VStack {
            SingularLogo()
            Text("Simulate Data Privacy Options")
                .font(.system(size: 17.0))
            
            Group{
                Toggle("GDPR Opt Out", isOn: $gdpr)
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 45.33, leading: 16, bottom: 0, trailing: 16))
                    .onChange(of: gdpr){ _gdpr in
                        // Toggle Code Here
                        if (_gdpr == true){
                            print("On")
                        } else {
                            print("Off")
                        }
                    }
                
                Toggle("CCPA Limited Data Sharing", isOn: $ccpa)
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 33.67, leading: 16, bottom: 81.3, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .onChange(of: ccpa){ _ccpa in
                        // Toggle Code Here
                        if (_ccpa == true){
                            print("On")
                        } else {
                            print("Off")
                        }
                    }
            }
            
            Group{
                Button(action: {
                    // Button code here
                    print("Device Info Button Clicked")
                    
                }, label: {
                    HStack{
                        Image(systemName: "square.and.arrow.up")
                        Text("Device Info")
                    }})
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                
                Text("IDFV")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(idfv))
                    .foregroundColor(.gray)
                    .font(.system(size: 15.0))
                    .padding(EdgeInsets(top: 15.6, leading: 16, bottom: 32.3, trailing: 16))
                
                Text("IDFA")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 20, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(idfa))
                    .foregroundColor(.gray)
                    .font(.system(size: 15.0))
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
            
            Spacer()
        }
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
