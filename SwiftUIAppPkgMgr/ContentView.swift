//
//  ContentView.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 11/26/22.
//

import SwiftUI
import Singular

struct ContentView: View {
    @State private var selection = 0
    @State private var showingAlert = false
    
    var body: some View {
            TabView() {
                PrivacyView()
                    .tabItem {
                        Image(systemName: (selection == 0 ? "person.fill" : "person.fill"))
                        Text("Privacy")
                }.tag(Tab.privacy)
                
                SignInView()
                    .tabItem {
                        Image(systemName: (selection == 1 ? "key.fill" : "key.fill"))
                        Text("Login")
                }.tag(Tab.login)
                
                RevenueView()
                    .tabItem {
                        Image(systemName: (selection == 2 ? "dollarsign.circle.fill" : "dollarsign.circle.fill"))
                        Text("Revenue")
                }.tag(Tab.revenue)
                
                EventsView()
                    .tabItem {
                        Image(systemName: (selection == 3 ? "list.bullet" : "list.bullet"))
                        Text("Events")
                }.tag(Tab.events)
                
                DeeplinkView()
                    .tabItem {
                        Image(systemName: (selection == 4 ? "link" : "link"))
                        Text("Deep Links")
                }.tag(Tab.deeplink)
                
                ReferrerView()
                    .tabItem {
                        Image(systemName: (selection == 5 ? "link.badge.plus" : "link.badge.plus"))
                        Text("Share Links")
                }.tag(Tab.referrer)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SingularLogo: View {
    var body: some View {
        Image("singular_logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(EdgeInsets(top: 20, leading: 16, bottom: 21, trailing: 16))
            
    }
}

extension ContentView {
    enum Tab: Hashable {
        case privacy
        case login
        case revenue
        case events
        case deeplink
        case referrer
    }
}
