//
//  HomeInfomationCell.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/22.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class HomeInfomationCell: UITableViewCell {

    lazy var backImageV:UIImageView = {
        
        let backImageV = UIImageView.init()
        return backImageV;
        
    }()
    
    lazy var bottomView : UIView = {
        let bottinView = UIView.init()
//        bottinView.backgroundColor
        return bottinView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("1111")
    }
}

extension HomeInfomationCell {
    
    func initSubviews(){
        
        
        
    }
    
}
