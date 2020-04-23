//
//  HomeVideoSmallCardCell.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/22.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class HomeVideoSmallCardCell: HomeBaseCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initSubviews()
    }
    
    //Mark 懒加载
    lazy var leftImageV : UIImageView = {
        
        let leftImageV = UIImageView.init()
        return leftImageV;
        
    }()
    
    lazy var timeLab : UILabel  = {
        let timeLab = UILabel.init()
        timeLab.textColor = .white
        timeLab.font = CommonConfig.kBoldFont(fontSize: 12)
        return timeLab
    }()
    
    lazy var titleLab : UILabel  = {
        let titleLab = UILabel.init()
        titleLab.textColor = .black
        titleLab.font = CommonConfig.kBoldFont(fontSize: 14)
        titleLab.numberOfLines = 0
        return titleLab
    }()
    
    lazy var tagLab : UILabel = {
        let tagLab = UILabel.init()
        tagLab.textColor = .white
        tagLab.font = CommonConfig.KFont(fontSize: 12)
        return tagLab
    }()
    
    lazy var shareBtn : UIButton = {
        let shareBtn = UIButton.init()
        return shareBtn
        
    }()
    
    required init?(coder: NSCoder) {
        fatalError("1111")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension HomeVideoSmallCardCell {
    
    func initSubviews()  {
        
        self.contentView.addSubview(self.leftImageV)
        self.leftImageV.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.contentView).offset(5)
            make.width.equalTo(120)
            make.height.equalTo(90)
            make.height.equalTo(self.contentView).offset(5)
            
        }
        
        self.contentView.addSubview(self.titleLab)
        self.titleLab.snp.makeConstraints { (make) in
            make.left.equalTo(self.leftImageV.snp_rightMargin).offset(20)
            make.top.equalTo(self.leftImageV).offset(10)
            make.right.lessThanOrEqualTo(self.contentView).offset(-10)
        }
        
        self.contentView.addSubview(self.tagLab)
        self.tagLab.snp.makeConstraints { (make) in
            make.left.equalTo(self.titleLab)
            make.bottom.equalTo(self.leftImageV).offset((-10))
        }
        
        self.contentView.addSubview(self.shareBtn)
        self.shareBtn.snp.makeConstraints { (make) in
            
            make.right.equalTo(self.contentView).offset(-10)
            make.centerY.equalTo(self.tagLab)
            
        }
        
    }
    
}

extension HomeVideoSmallCardCell {
    
    
}
