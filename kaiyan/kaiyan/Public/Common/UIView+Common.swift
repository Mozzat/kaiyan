//
//  UIView+Common.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/21.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func corner( radius : CGFloat) {
        
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        
    }
    
    
    
}
