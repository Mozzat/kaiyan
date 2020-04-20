//
//  MineTarBar.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/20.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class MineTarBar: UITabBar {
    
    ///点击中心按钮
    var clickCenterBlock:(() -> Void)?
    
    ///当前选中标记
    private var currentIndex: Int = 0
    
    ///中心按钮
    private lazy var centerButton: UIButton = {
        let button = UIButton.init(frame: CGRect.init(x: (self.frame.size.width - 40)/2.0, y: (self.frame.size.height - 40)/2.0, width: 40, height: 40));
        button.translatesAutoresizingMaskIntoConstraints = false;
        var centerImage = UIImage.init(icon: .ionicons(.androidAddCircle), size: CGSize.init(width: 40, height: 40),textColor: .black);
        button.setImage(centerImage, for: .normal);
        return button;
        
    }()

    override init(frame:CGRect) {
        super.init(frame: frame);
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

///UI
extension MineTarBar {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configUI()
    }
    
    func configUI(){
        
        ///设置Tabbar背景色
        self.backgroundColor = .white;
        
        ///隐藏Tabbar的横线
        for v in self.subviews {
            
            if v.isKind(of: UIImageView.classForCoder()) && v.frame.size.height <= 1  {
                v.isHidden = true
            }
            
        }
        
        ///添加中间按钮
        self.addSubview(self.centerButton)
        
        var btnIndex = 0;
        let width = self.frame.size.width / 5.0;
        for v in self.subviews {
            if v.isKind(of: NSClassFromString("UITabBarButton")!) {
                v.frame.size.width = width ;
                v.frame.origin.x = width * CGFloat(btnIndex);
                btnIndex += 1

                if btnIndex == 2 {
                    btnIndex += 1
                }
            }

        }
        
//        for view in self.subviews {
//            if view.isKind(of: NSClassFromString("UITabBarButton")! ) {
//                let badgeView = view.value(forKeyPath: "_badge")
//                    print("1\(badgeView!.self)")
//                let badge = badgeView as! UIView
//                    print("2\(badge.subviews)")
//                }
//            }
//        }
        
        ///将按钮添加到视图最上层
        self.bringSubviewToFront(self.centerButton)
        
    }
    
}
