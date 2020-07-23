//
//  AEPSampleExtension.swift
//  AEPSampleExtension
//
//  Created by Jiabin Geng on 6/28/20.
//  Copyright © 2020 Adobe. All rights reserved.
//

import Foundation
import AEPCore
import AEPServices

public struct AEPSampleExtension:Extension{
    public var friendlyName: String = "Sample"
    
    public var metadata: [String : String]? = [:]
    
    public var runtime: ExtensionRuntime
    
    public init(runtime: ExtensionRuntime) {
        self.runtime = runtime
    }
    
    
    
    public var name: String = "AEPSampleExtension"
    
    public var version: String = "0.0.1"
    
    public func onRegistered() {
        registerListener(type: .analytics, source: .requestContent, listener: self.handleAnalytics)
    }
    
    public func onUnregistered() {
    }
    
    func handleAnalytics(event:Event){
        print("event received")
        
    }
    
}
