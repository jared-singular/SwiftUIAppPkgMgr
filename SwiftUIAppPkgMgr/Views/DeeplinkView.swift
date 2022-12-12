//
//  DeeplinkView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 12/11/22.
//

import SwiftUI
import Singular

struct DeeplinkView: View {
    @State private var deeplink = "App did not open with a deeplink"
    @State private var passthrough = "App did not open with a deeplink"
    @State private var isDeferred = "App did not open with a deeplink"
    @State private var openUrl = "App did not open with a deeplink"
    
    var body: some View {
        VStack {
            SingularLogo()
            
            Text("Deeplink Details")
                .font(.system(size: 17.0))
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
            Group{
                Text("Deeplink")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 40, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(deeplink))
                    .foregroundColor(.gray)
                    .font(.callout)
                    .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Group{
                Text("Passthrough")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 40, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(passthrough))
                    .foregroundColor(.gray)
                    .font(.callout)
                    .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Group{
                Text("Is Deferred")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 40, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(isDeferred))
                    .foregroundColor(.gray)
                    .font(.callout)
                    .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Group{
                Text("Open URL")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 17.0))
                    .padding(EdgeInsets(top: 40, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(openUrl))
                    .foregroundColor(.gray)
                    .font(.callout)
                    .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Spacer()
        }
    }
}

struct DeeplinkView_Previews: PreviewProvider {
    static var previews: some View {
        DeeplinkView()
    }
}
