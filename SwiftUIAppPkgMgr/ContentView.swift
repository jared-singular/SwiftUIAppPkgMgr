//
//  ContentView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 11/26/22.
//

import SwiftUI
import Singular

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Image("singular_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            
            Text("SwiftUI Sample App")
                .font(.title)
            Text("by Jared Ornstead")
            
            Button(action: {
                print(Date(),"-- Asking for ATT Consent - Clicked!")
                Utils.requestTrackingAuthorization()
            }, label: {
                HStack{
                    Image(systemName: "checkmark.shield")
                    Text("Press to Ask for ATT Consent")
                }
            })
            .padding(5.0)
                      
            
            Button("Press to Send Event", action: {
                print(Date(),"-- Send Event - Clicked!")
                Singular.event("ButtonClick")
                showingAlert = true
            })
            .alert("Event Sent", isPresented: $showingAlert){
                Button("OK") {}
            } 
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
