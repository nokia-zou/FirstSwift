//
//  NSDictionary+object.swift
//  SWPost
//
//  Created by 朋 邹 on 16/6/4.
//  Copyright © 2016年 zou. All rights reserved.
//

import UIKit

extension NSDictionary {
    
    func stringValueForKey(key: String!) -> String {
        if (nil == key) {
            return ""
        }
        
        let value = self.objectForKey(key)
        if value is NSString {
            return (value as? String)!
        }
        else if value is NSNumber {
            let number: NSNumber = (value as? NSNumber)!
            return number.stringValue
        }
        
        return ""
    }
    
    func stringObjectForKey(key: NSString!) -> NSString {
        if (nil == key) {
            return ""
        }
        
        let value = self.objectForKey(key)
        if value is NSString {
            return (value as? NSString)!
        }
        else if value is NSNumber {
            let number: NSNumber = (value as? NSNumber)!
            return NSString(string: number.stringValue)
        }
        
        return ""
    }
    
    func dictionaryObjectForKey(key: NSString!) -> NSDictionary? {
        if nil == key { return nil }
        
        let value = self.objectForKey(key)
        if value is NSDictionary {
            return (value as? NSDictionary)!
        }
        
        return nil
    }
    
    func arrayObjectForKey(key: NSString!) -> NSArray? {
        if nil == key { return nil }
        
        let value = self.objectForKey(key)
        if value is NSArray {
            return (value as? NSArray)!
        }
        
        return nil
    }

}
