//
//  MineTabBarController.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/20.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit


class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initTabBar()
        initViewController()
        // Do any additional setup after loading the view.
    }
    
    func initTabBar() {
        
        var attri: [NSAttributedString.Key: Any] = [:]
        attri[NSAttributedString.Key.foregroundColor] = UIColor.black
        
        ///设置选中的颜色
        UITabBarItem.appearance().setTitleTextAttributes(attri, for: .selected)
        
        let tabBar = MineTarBar.init()
        self.setValue(tabBar, forKey: "tabBar")
        
    }
    
    func initViewController() {
        
        let titleArr = ["首页","社区","通知","我的"];
        let normalArr = ["home","follow","noti","mine"];
        let vcArr = ["Home","Follow","Notice","Mine"]
        
        ///1.获取命名空间
        guard let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
            print("没有获取到命名空间")
            return
        }
        
        var index = 0
        for title in vcArr {
            
            ///2.更具对应额字符创获取对应的class
            guard let vcClass = NSClassFromString("\(nameSpace).\(title)") else {
                print("没有获取到对应的字符串class")
                return;
            }
            
            ///3.将对应额AnyObject转成控制器类型
            guard let vcType = vcClass as? UIViewController.Type else {
                print("没有获取对应控制器的类型")
                return;
            }
            
            addChildVC(vc:vcType.init(), imageName: normalArr[index], title: titleArr[index])
            index += 1
        }
        
    }
    
    func addChildVC(vc:UIViewController , imageName : String , title : String) {
        
        let image = UIImage.init(named: imageName)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal);
        let selectImage = UIImage.init(named: "\(imageName)_selected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal);
        
        let na = BaseNavigationController.init(rootViewController: vc);
        na.tabBarItem.title = title;
        na.tabBarItem.image = image;
        na.tabBarItem.selectedImage = selectImage;
        self.addChild(na)
    }
    
}
