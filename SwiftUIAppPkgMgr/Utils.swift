//
//  Utils.swift
//  SwiftUIAppPkgMgr
//
//  Created by Jared Ornstead on 11/26/22.
//

import Foundation
import AppTrackingTransparency

class Utils {
    
    static func requestTrackingAuthorization() {
        if #available(iOS 14, *) {
            // call requestTrackingAuthorizationWithCompletionHandler from ATTrackingManager to start the user consent process
            
            ATTrackingManager.requestTrackingAuthorization { status in
                print(Date(),"-- ATT:",status)
                // your authorization handler here
                // note: the Singular SDK will automatically detect if authorization has been given and initialize itself
            }
        }
    }
}
