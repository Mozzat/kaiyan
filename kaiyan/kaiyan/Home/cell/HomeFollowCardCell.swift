//
//  HomeFollowCardCell.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/21.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class HomeFollowCardCell: HomeBaseCell {
    
    ///lazy
    lazy var bannerImageV : UIImageView = {
        let bannerImageV = UIImageView.init()
        return bannerImageV;
    }()
    
    lazy var tagImageV : UIImageView = {
        let tagImageV = UIImageView.init()
        return tagImageV
    }()
    
    lazy var timeLab : UILabel = {
        
        let timeLab = UILabel.init()
        timeLab.textColor = .white;
        timeLab.font = CommonConfig.KFont(fontSize: 12)
        timeLab.text = "01:20"
        return timeLab
    }()

    lazy var headImageV : UIImageView = {
        
        let headImageV = UIImageView.init()
        return headImageV
        
    }()
    
    lazy var titleLab : UILabel = {
        let titleLab = UILabel.init()
        titleLab.text = "标题"
        titleLab.font = CommonConfig.kBoldFont(fontSize: 14)
        titleLab.textColor = .black
        return titleLab;
    }()
    
    lazy var subTitle : UILabel = {
        let subTitle = UILabel.init()
        subTitle.textColor = UIColor.hexColor(hexColor: "7A7A7A")
        subTitle.font = CommonConfig.KFont(fontSize: 12)
        subTitle.text = "副标题"
        return subTitle;
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("11111")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override var dataDic: NSDictionary? {
        didSet {
            print("11111")
            let data = dataDic?["data"] as? NSDictionary
            let content = data?["content"] as? NSDictionary
            let contentData = content?["data"] as? NSDictionary
            let cover = contentData?["cover"] as? NSDictionary
            if let url = cover?["feed"] as? String {
                self.bannerImageV .loadWebImage(url: url, placeHolder: "日历")
            }
        }
    }

}

extension HomeFollowCardCell {
    
    func initSubviews() {
        
        self.contentView.addSubview(self.bannerImageV)
        self.bannerImageV.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.contentView)
            make.left.equalTo(self.contentView).offset(10)
            make.right.equalTo(self.contentView).offset(-10)
            make.height.equalTo(200);
        }
        
        self.contentView.addSubview(self.tagImageV);
        self.tagImageV.snp.makeConstraints { (make) in
            make.top.left.equalTo(self.bannerImageV).offset(10)
            make.width.height.equalTo(50)
        }
        
        self.contentView .addSubview(self.timeLab)
        self.timeLab.snp.makeConstraints { (make) in
            make.bottom.right.equalTo(self.bannerImageV).offset(-10)
        }
        
        self.contentView.addSubview(self.headImageV)
        self.headImageV.snp.makeConstraints { (make) in
            make.left.equalTo(self.contentView).offset(10)
            make.top.equalTo(self.bannerImageV.snp_bottomMargin).offset(5)
            make.width.height.equalTo(30)
            make.bottom.equalTo(self.contentView).offset(-10)
        }
        
        self.contentView.addSubview(self.titleLab)
        self.contentView.addSubview(self.subTitle)
        self.titleLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.headImageV).offset(3)
            make.left.equalTo(self.headImageV.snp_rightMargin).offset(10)
        }
        self.subTitle.snp.makeConstraints { (make) in
            make.left.equalTo(self.titleLab)
            make.top.equalTo(self.titleLab.snp.bottom).offset(3)
        }
        
    }
    
}
