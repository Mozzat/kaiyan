//
//  UIImageView+SDWebImage.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/22.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func loadWebImage(url: String , placeHolder : String)  {
        
        self.sd_setImage(with: URL.init(string: url) , placeholderImage: UIImage.init(named: placeHolder))
    }
    
}
