//
//  HomeHeadCell.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/21.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class HomeHeadCell: UITableViewCell {

    lazy var leftTitleLab: UILabel = {
        () -> UILabel in
        let leftLab = UILabel.init()
        leftLab.textColor = .black
        leftLab.font = CommonConfig.kBoldFont(fontSize: 30);
        leftLab.text = "每日开眼精选"
        return leftLab;
    }()
    
    lazy var rightLab:UILabel = {
        let rightLab = UILabel.init()
        rightLab.textColor = UIColor.hexColor(hexColor: "364EFF")
        rightLab.text = "查看往期"
        rightLab.font = CommonConfig.KFont(fontSize: 12);
        return rightLab;
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.backgroundColor = .white
        initSubviews();
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

extension HomeHeadCell {
    
    func initSubviews() {
        
        self.contentView.addSubview(self.leftTitleLab)
        self.leftTitleLab.snp_makeConstraints { (make) in
            make.left.equalTo(self.contentView).offset(10);
            make.bottom.equalTo(self.contentView).offset(-5);
        }
        
        let rightImage = UIImageView.init()
        rightImage.image = UIImage.init(named: "箭头")
        self.contentView.addSubview(rightImage)
        rightImage.snp_makeConstraints { (make) in
            make.right.equalTo(self.contentView).offset(-10)
            make.centerY.equalTo(self.leftTitleLab)
        }
        
        self.contentView.addSubview(self.rightLab)
        self.rightLab.snp.remakeConstraints { (make) in
            make.right.equalTo(rightImage.snp.left).offset(-10)
            make.centerY.equalTo(self.leftTitleLab)
        }
        
    }
    
}
