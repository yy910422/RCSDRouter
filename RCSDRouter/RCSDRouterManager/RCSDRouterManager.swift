//
//  RCSDRouterManager.swift
//  RCSDRouter
//
//  Created by bg on 2017/7/23.
//  Copyright © 2017年 bg. All rights reserved.
//

import Foundation

final class RCSDRouterManager: NSObject {
    
    public  var  serviceProvideSource: NSMutableDictionary = NSMutableDictionary()
    
     static let sharedInstance = RCSDRouterManager()
    
    private override init(){}
    
    public func registerServiceProvide(provide:AnyObject, pro: Protocol) {
        
        serviceProvideSource.setObject(provide, forKey: NSStringFromProtocol(pro) as NSCopying)
        
    }
    
    public func serviceProvideForProtocol(pro: Protocol)-> AnyObject {
        return serviceProvideSource.object(forKey: NSStringFromProtocol(pro)) as AnyObject
    }
    
}
