//
//  HomeBaseCell.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/23.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit

class HomeBaseCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("error")
    }
    
    var dataDic : NSDictionary? {
        didSet {
            
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
