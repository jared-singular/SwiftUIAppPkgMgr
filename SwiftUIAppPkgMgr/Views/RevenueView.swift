//
//  RevenueView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 12/11/22.
//

import SwiftUI
import Singular

struct RevenueView: View {
    var body: some View {
        VStack {
            SingularLogo()
            Text("Simulate Revenue Events")
                .font(.system(size: 17.0))
            
            Text("Singular provides three(3) different methods to pass Revenue from the App, using the methods below.")
                .font(.callout)
                .multilineTextAlignment(.center)
                .foregroundColor(.accentColor)
                .padding(EdgeInsets(top: 17, leading: 16, bottom: 47, trailing: 16))
            
            
            Button(action: {
                // Code Here
                print("Button")
                
            }, label: {
                Text("iapComplete Method")
            })
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(.blue)
            .tint(.white)
            .clipShape(RoundedRectangle(cornerRadius: 6))
            .frame(maxWidth: .infinity, minHeight: 44)
            
            
            Spacer().frame(height: 20)
            
            
            Button(action: {
                // Code Here
                print("Button")
                
            }, label: {
                Text("revenue Method")
            })
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(.blue)
            .tint(.white)
            .clipShape(RoundedRectangle(cornerRadius: 6))
            .frame(maxWidth: .infinity, minHeight: 44)
            
            
            Spacer().frame(height: 20)
            
            
            Button(action: {
                // Code Here
                print("Button")
                
            }, label: {
                Text("customRevenue Method")
            })
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(.blue)
            .tint(.white)
            .clipShape(RoundedRectangle(cornerRadius: 6))
            .frame(maxWidth: .infinity, minHeight: 44)
            
            
            Spacer()
        }
    }
}

struct RevenueView_Previews: PreviewProvider {
    static var previews: some View {
        RevenueView()
    }
}
