//
//  CommonConfig.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/21.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class CommonConfig: NSObject {
    
    class func KFont(fontSize : CGFloat) -> UIFont {
        let font =  UIFont.systemFont(ofSize: fontSize)
        return font
    }
    
    class func kBoldFont(fontSize : CGFloat) -> UIFont {
        let font =  UIFont.boldSystemFont(ofSize: fontSize)
        return font
    }
}

