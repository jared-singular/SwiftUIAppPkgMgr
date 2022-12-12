//
//  SwiftUIAppPkgMgrApp.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 11/26/22.
//

import SwiftUI
import AdSupport
import Singular

@main
struct SwiftUIAppPkgMgrApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Override point for customization after application launch.
        print(Date(),"-- didFinishLaunchingWithOptions()")
        // Get Identifier for Vendor (IDFV)
        let idfv = UIDevice().identifierForVendor!.uuidString
        print(Date(), "-- IDFV:",UIDevice().identifierForVendor!.uuidString)
        UserDefaults.standard.set(idfv, forKey: "idfv")
        
        
        // Add 3rd Party Code Here:
        if let config = self.getConfig() {
            config.launchOptions = launchOptions
            Singular.start(config)
        }
       
        return true
    }

    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        // Override point for customization after application launch.
        print(Date(),"-- userActivity()")
        // Get Identifier for Vendor (IDFV)
        print(Date(), "-- IDFV:",UIDevice().identifierForVendor!.uuidString)
        
        // Add 3rd Party Code Here:
        
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        // Override point for customization after application launch.
        print(Date(),"-- open url()")
        // Get Identifier for Vendor (IDFV)
        print(Date(), "-- IDFV:",UIDevice().identifierForVendor!.uuidString)
        
        // Add 3rd Party Code Here:
        
        return true
    }
    
    func getConfig() -> SingularConfig? {
        guard let config = SingularConfig(apiKey: Constants.APIKEY, andSecret: Constants.SECRET) else {
            return nil
        }
        // Enable use of SKAN for iOS14 tracking
        // Singular will call registerAppForAdNetworkAttribution for you
        // Invoking [Singular skanRegisterAppForAdNetworkAttribution] will set this value to YES, even if done before/after [Singular start]
        config.skAdNetworkEnabled = true
        
        // Delay sending events for up to 3 minutes, or until Tracking is Authorized (only on iOS 14)
        config.waitForTrackingAuthorizationWithTimeoutInterval = 180
        
        // Enable manual conversion value updates
        // IMPORTANT: set as NO (or just don't set - it defaults to NO) to let Singular manage conversion values
        config.manualSkanConversionManagement = false
        config.conversionValueUpdatedCallback = { newConversionValue in
            // Receive a callback whenever the Conversion Value is updated
        }
        
        return config
    }
    
}
