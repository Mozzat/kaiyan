//
//  HomeTextCardCell.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/22.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class HomeTextCardCell: UITableViewCell {

    lazy var leftTitleLab : UILabel = {
        let titleLab = UILabel.init()
        titleLab.textColor = UIColor.ThemeColor.grayColor;
        titleLab.font = CommonConfig.kBoldFont(fontSize: 24)
        return titleLab
    }()
    
    lazy var focuesBtn : UIButton = {
        let focuesBtn = UIButton.init()
        focuesBtn.setTitle("+关注", for: .normal)
        focuesBtn.setTitleColor(.black, for: .normal)
        focuesBtn.titleLabel?.font = CommonConfig.KFont(fontSize: 14)
        return focuesBtn;
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("11111")
    }

}

extension HomeTextCardCell {
    
    func initSubviews() {
        
        self.contentView.addSubview(self.leftTitleLab)
        self.leftTitleLab.snp.makeConstraints { (make) in
            make.left.equalTo(self.contentView).offset(10)
            make.bottom.equalTo(self.contentView).offset(-5)
            make.width.lessThanOrEqualTo(200)
        }
        
        self.contentView .addSubview(self.focuesBtn)
        self.focuesBtn.snp.makeConstraints { (make) in
            make.right.equalTo(self.contentView).offset(-10)
            make.centerY.equalTo(self.leftTitleLab)
            make.width.equalTo(60)
        }
    }
    
}
