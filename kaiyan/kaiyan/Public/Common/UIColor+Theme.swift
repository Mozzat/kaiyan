//
//  UIColor+Theme.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/22.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    struct ThemeColor {
        ///灰色
        static let grayColor = UIColor.hexColor(hexColor: "E8E8E8")
        ///黑色
        static let blackColor = UIColor.RGBColor(41)
        ///导航栏字体颜色
        static let lightBlack = UIColor.RGBColor(137)
    }
    
    //MARK: - RGB
    class func RGBColor(red : CGFloat, green : CGFloat, blue :CGFloat ) -> UIColor {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha:1)
    }
    class func RGBColor(_ RGB:CGFloat) -> UIColor {
        return RGBColor(red: RGB, green: RGB, blue: RGB)
    }
    
    //MARK: - 16进制字符串转UIColor
    class func hexColor(hexColor:String)->UIColor{
    var cstr = hexColor.trimmingCharacters(in:  CharacterSet.whitespacesAndNewlines).uppercased() as NSString;
        if(cstr.length < 6){
            return UIColor.clear;
         }
        if(cstr.hasPrefix("0X")){
            cstr = cstr.substring(from: 2) as NSString
        }
        if(cstr.hasPrefix("#")){
          cstr = cstr.substring(from: 1) as NSString
        }
         if(cstr.length != 6){
          return UIColor.clear;
        }
        var range = NSRange.init()
        range.location = 0
        range.length = 2
        //r
        let rStr = cstr.substring(with: range);
        //g
        range.location = 2;
        let gStr = cstr.substring(with: range)
        //b
        range.location = 4;
        let bStr = cstr.substring(with: range)
        var r :UInt32 = 0x0;
        var g :UInt32 = 0x0;
        var b :UInt32 = 0x0;
        Scanner.init(string: rStr).scanHexInt32(&r);
        Scanner.init(string: gStr).scanHexInt32(&g);
        Scanner.init(string: bStr).scanHexInt32(&b);
        return UIColor.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1);
      }
    
}
