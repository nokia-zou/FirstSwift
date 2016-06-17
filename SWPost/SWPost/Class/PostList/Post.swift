//
//  Post.swift
//  SWPost
//
//  Created by 朋 邹 on 16/6/16.
//  Copyright © 2016年 zou. All rights reserved.
//

import UIKit

class Post: NSObject {
    // MARK: - property
    //  main
    var ID : String?
    var textContent : String?
    //  image
    var imageUrl : String?
    var imageWidth : CFloat?
    var imageHeight : CFloat?

    // MARK: - init
    init(dic: NSDictionary?) {
        super.init()
        
        ID          = dic?.stringValueForKey("id")
        textContent = dic?.stringValueForKey("text")
        imageUrl    = dic?.stringValueForKey("name")
        imageUrl    = dic?.stringValueForKey("icon")
    }
}
