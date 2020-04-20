//
//  ViewController.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/20.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit
import SwiftIcons

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        ///图片
        let headImageV = UIImageView.init(frame: CGRect.init(x: 100, y: 100, width: 50, height: 50));
        headImageV.image = UIImage.init(icon: .emoji(.airplane), size: CGSize.init(width: 50, height: 50),textColor: .white,backgroundColor: .blue);
        self.view.addSubview(headImageV);
        
        say()
    }
    
    func say() {
        print("hello")
    }


}

