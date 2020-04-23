//
//  Home.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/20.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit
import SnapKit

class Home: BaseViewController {

    var selectBtn : UIButton?
    lazy var btmLine : UIView = {
        let line = UIView.init(frame: CGRect.init(x: (kScreenWidth - 10)/2.0, y: kNavHeight - 5 - 3, width: 10, height: 3))
        line.backgroundColor = .black
        return line
    }()
    lazy var tHomeView : HomeView  = {
        let tHomeView = HomeView.init(frame: CGRect.init(x: kScreenWidth, y: 0, width: kScreenWidth, height: kScreenHeight - tabBarHeight))
        return tHomeView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        initSubviews()
        // Do any additional setup after loading the view.
    }
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

///UI
extension Home {

    func initSubviews() {
        
        let bgScrollView = UIScrollView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight - tabBarHeight));
        bgScrollView.backgroundColor = .white;
        bgScrollView.contentSize = CGSize.init(width: kScreenWidth * 3, height: (kScreenHeight - tabBarHeight));
        bgScrollView.setContentOffset(CGPoint.init(x: kScreenWidth, y: 0), animated: false)
        bgScrollView.isPagingEnabled = true
        self.view.addSubview(bgScrollView);
        
        let topView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kNavHeight));
        topView.backgroundColor = .white;
        self.view .addSubview(topView);
        
        let leftBtn = UIButton.init();
        leftBtn.setImage(UIImage.init(named: "日历"), for: .normal);
        leftBtn.contentHorizontalAlignment = .left
        topView.addSubview(leftBtn);
        leftBtn.snp.makeConstraints { (make) in
            make.bottom.equalTo(topView);
            make.left.equalTo(topView).offset(10);
            make.width.height.equalTo(44);
        }
        
        let searchBtn = UIButton.init();
        searchBtn.setImage(UIImage.init(named: "搜索"), for: .normal);
        searchBtn.contentHorizontalAlignment = .right
        topView.addSubview(searchBtn)
        searchBtn.snp.makeConstraints { (make) in
            make.bottom.equalTo(topView);
            make.right.equalTo(topView).offset(-10);
            make.width.height.equalTo(44);
        }
        
        let titleArr = ["推荐","发现","日报"]
        var index = 0
        var centerBtn : UIButton?
        for title in titleArr {
            
            let btn = UIButton.init()
            btn.setTitle(title, for: .normal)
            btn.titleLabel?.font = CommonConfig.kBoldFont(fontSize: 12);
            btn.setTitleColor(UIColor.hexColor(hexColor: "000000"), for: .selected)
            btn.setTitleColor(UIColor.hexColor(hexColor: "7A7A7A"), for: .normal)
            btn.tag = 1444 + index
            topView.addSubview(btn)
            if index == 0 {
                btn.isSelected = true
                self.selectBtn = btn
                centerBtn = btn
            }
            btn.snp.makeConstraints { (make) in
                if index == 0 {
                    make.centerX.equalTo(topView)
                    make.centerY.equalTo(leftBtn)
                } else if index == 1 {
                    make.centerY.equalTo(centerBtn!)
                    make.right.equalTo(centerBtn!.snp_leftMargin).offset(-30.0)
                } else if index == 2 {
                    make.centerY.equalTo(centerBtn!)
                    make.left.equalTo(centerBtn!.snp_rightMargin).offset(30.0)
                }
                index += 1
            }
            
        }
        topView.addSubview(self.btmLine)
        
        bgScrollView.addSubview(self.tHomeView)
        
    }
    
}
