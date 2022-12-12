//
//  EventsView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 12/11/22.
//

import SwiftUI
import Singular

struct EventsView: View {
    var body: some View {
        VStack {
            SingularLogo()
            Text("Simulate In-App Events")
                .font(.system(size: 17.0))
            
            Text("Singular Standard Events are implemented throughout this sample application, below are a couple buttons as examples, along with a Custom Event option.")
                .font(.callout)
                .multilineTextAlignment(.center)
                .foregroundColor(.accentColor)
                .padding(EdgeInsets(top: 17, leading: 16, bottom: 47, trailing: 16))
            
            
            Button(action: {
                // Code Here
                print("Button")
                
            }, label: {
                Text("sng_level_achieved")
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
                Text("sng_add_to_cart")
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
                Text("Custom Event")
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

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
